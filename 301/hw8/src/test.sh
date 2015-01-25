#!/bin/sh
./hw8 < yes.txt >test.out 2>test.out; grep no <test.out
./hw8 < no.txt >test.out 2>test.out; grep yes <test.out
rm test.out
