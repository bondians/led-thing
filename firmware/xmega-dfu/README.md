this is a dump of the IAR workspace I used to compile a slightly-modified version of atmel's DFU bootloader.

the modification was to replace the GPIO-based condition for entering boot with logic that enters the bootloader when the external reset flag is set.