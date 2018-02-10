The LED Thing
==============

This is the main firmware for the power board, which consists of a 5V 10A power supply, an XMEGA A4U microcontroller, some 5V level shifting, and 5 connectors for controlling 5V LED strings (APA102, WS2812, etc).


Build dependencies
===================

#. The Haskell Platform

#. The "shake" and "avr-shake" Cabal packages

#. AVR8 toolchain

#. Protocol buffers compiler for C

#. The "Advanced Software Framework" from Microchip (formerly "Atmel Software Framework" from Atmel)

#. The git submodules of this repo

To install deps on Ubuntu, for example:

	sudo apt install haskell-platform protobuf-c-compiler gcc-avr avr-binutils avr-libc
	cabal update
	cabal install -j shake avr-shake
	./get-asf.sh
	git submodule update --init

And then to build, just run "shake" or "shake -j" for a parallel build (usually much faster).
