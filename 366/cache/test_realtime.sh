#!/bin/sh
compiler="g++"
optflag="-O2"

size=100
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=200
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=300
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=400
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=500
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=600
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=700
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=800
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=900
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=1000
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=2000
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=3000
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=4000
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

size=5000
blocking=50

echo "#define MATRIXSIZE $size" > size.h
echo "#define BLOCKINGSIZE $blocking" >> size.h

prog="obvious"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

prog="blocking"
$compiler $prog.cc -o $prog
echo "$prog\t$size\t$blocking\tnone" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`
$compiler $prog.cc -o $prog $optflag
echo "$prog\t$size\t$blocking\t$optflag" `(time ./$prog) 2>&1 | grep real | sed -e 's/real//g'`

