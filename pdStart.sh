#!/usr/bin/sh

pd -nogui -noadc -alsa -alsamidi -mididev 1 -send ";pd dsp 1" ~/Pd-fm-synth/rpi-fm-synth.pd &
sleep 3
# This line tells Pd to connect to a KORG nanoKONTOL2 MIDI interface. You can use
# your own.
aconnect 'nanoKONTROL2':0 'Pure Data':0

# This will list available MIDI controllers
# aconnect -li

