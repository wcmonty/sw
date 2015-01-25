#!/bin/sh
gcc -o m64_int.out -D INT -D USE_UNI *.c
gcc -o m64_float.out -D FLOAT -D USE_UNI *.c
gcc -m32 -o m32_float.out -D FLOAT -D USE_UNI *.c
gcc -m32 -o m32_int.out -D INT -D USE_UNI *.c

echo > temp.txt
echo "32 float" >> temp.txt
./m32_float.out >> temp.txt

echo >> temp.txt
echo "32 int" >> temp.txt
./m32_int.out >> temp.txt

echo >> temp.txt
echo "64 float" >> temp.txt
./m64_float.out >> temp.txt

echo >> temp.txt
echo "64 int" >> temp.txt
./m64_int.out >> temp.txt
