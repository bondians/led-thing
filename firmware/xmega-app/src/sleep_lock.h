#pragma once

#include <stdbool.h>
#include <interrupt.h>
#include <sleepmgr.h>

// lock the system out of sleep, typically to hand events from an async
// handler of some kind to a main-loop task.  'lock' is a pointer to a
// variable for tracking the state, which should _only_ be used for this purpose.
static inline void sleep_lock(volatile bool *lock) {
    if (!*lock) {
        irqflags_t flags = cpu_irq_save();
        
        if (!*lock) {
            sleepmgr_lock_mode(SLEEPMGR_ACTIVE);
            *lock = true;
        }
        
        cpu_irq_restore(flags);
    }
}

// check whether 'sleep_lock' was called on a pointer
static inline bool sleep_locked(volatile bool *lock) {
    return *lock;
}

// check whether 'sleep_lock' was called on a pointer, and clear the
// associated lock state if it was.
static inline bool sleep_unlock(volatile bool *lock) {
    bool locked;
    
    if ((locked = *lock)) {
        irqflags_t flags = cpu_irq_save();
        
        if ((locked = *lock)) {
            sleepmgr_unlock_mode(SLEEPMGR_ACTIVE);
            *lock = false;
        }
        
        cpu_irq_restore(flags);
    }
    
    return locked;
}