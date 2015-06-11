#!/bin/sh

if [ -f somefile ]; then
    rm somefile
fi
find . \( ! -name "./out*" -a ! -name ".git*" \) -a \( -name "*.cpp" -o -name "*.h" -o -name "*.c" -o -name "*.aidl" -o -name "*.java" -o -name "*.S" \) > somefile
gtags -f somefile
echo "generate gtags done."
