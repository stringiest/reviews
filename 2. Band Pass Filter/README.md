Builds digitial audio work station plug-ins.

band pass filter - most requested tech

Musicians who use this do so to change how their tracks sound.

Input - all tracks are treated as soundwaves 
Output should also be a sound wave

Memory representation of these would be arrays of integers, with the integers representing frequencies.

Integers represent hertz, but okay to represent them as integers.

A = 440Hz

When filter sees frequency below minimum frequency, set to min, if above max, set to max.

Min freq = 40Hz
Max freq = 1000Hz

However, this can vary from one musician to the next, so they also need to set own min& max frequencies.

Can also not specify their own minimum & max frequencies, then above amounts should apply.

Sample:

[60,10,45,60,1500] => [60,40,45,60,1000] 