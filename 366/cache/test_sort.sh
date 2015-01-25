#!/bin/sh
echo "Cache Size\tBlocksize\tAssociativity\tRandom\tAccesses\tHits\tMisses\tMiss Rate (%)\tTotal Time\tHit Time\tMiss Penalty"
size=128; b=1; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=2; a=1
echo "$size\t$b\t$a\ttrue" 
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=4; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=8; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=16; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=32; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=128; b=1; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=2; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=4; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=8; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=16; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=128; b=1; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=2; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=4; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=8; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=128; b=1; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=2; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=4; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=128; b=1; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=128; b=2; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=128; b=1; a=32
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=256; b=1; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=2; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=4; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=8; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=16; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=32; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=256; b=1; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=2; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=4; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=8; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=16; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=256; b=1; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=2; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=4; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=8; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=256; b=1; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=2; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=4; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=256; b=1; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=256; b=2; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=256; b=1; a=32
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=512; b=1; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=2; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=4; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=8; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=16; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=32; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=512; b=1; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=2; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=4; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=8; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=16; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=512; b=1; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=2; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=4; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=8; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=512; b=1; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=2; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=4; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=512; b=1; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=512; b=2; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=512; b=1; a=32
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=1024; b=1; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=2; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=4; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=8; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=16; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=32; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=1024; b=1; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=2; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=4; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=8; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=16; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=1024; b=1; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=2; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=4; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=8; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=1024; b=1; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=2; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=4; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=1024; b=1; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=1024; b=2; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=1024; b=1; a=32
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=2048; b=1; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=2; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=4; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=8; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=16; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=32; a=1
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=2048; b=1; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=2; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=4; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=8; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=16; a=2
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=2048; b=1; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=2; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=4; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=8; a=4
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=2048; b=1; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=2; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=4; a=8
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=2048; b=1; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
size=2048; b=2; a=16
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'

size=2048; b=1; a=32
echo "$size\t$b\t$a\ttrue"
./sort | cache -r -b$b -a$a | grep "311817"
./sort | cache -r -b$b -a$a | grep penalty | sed -e 's/Hit time//g' | sed -e 's/Miss penalty //g'
