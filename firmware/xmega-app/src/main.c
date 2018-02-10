#include "main.h"

#include "usb_task.h"

#include <board.h>
#include <pmic.h>
#include <sleepmgr.h>
#include <stdint.h>
#include <sysclk.h>
#include <avr/pgmspace.h>
#include <pt.h>

typedef PT_THREAD((*pt_task_t)(struct pt *pt));

#define NUM_TASKS   (sizeof(tasks) / sizeof(*tasks))
static const pt_task_t tasks[] PROGMEM = {
    usb_task,
};

static void tick_task(struct pt *pt, uint8_t i) {
    pt_task_t task;
    memcpy_P(&task, tasks + i, sizeof(task));
    task(pt);
}

int main(void)
{
    sysclk_init();
    sleepmgr_init();
    pmic_init();
    
    board_init();
    cpu_irq_enable();
    
    struct pt task_pts[NUM_TASKS] = {};
    for (uint8_t i = 0; i < NUM_TASKS; i++) {
        PT_INIT(task_pts + i);
    }
    
    while (true) {
        for (uint8_t i = 0; i < NUM_TASKS; i++) {
            tick_task(task_pts + i, i);
        }
        
        sleepmgr_enter_sleep();
    }
}
