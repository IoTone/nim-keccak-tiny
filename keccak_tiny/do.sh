#!/usr/bin/env sh
cc=$(which clang-3.6||which gcc-4.9||which clang||which gcc)
case $(uname) in
Linux)
    so=$(printf so) 
    ;;
Darwin)
    so=$(printf dylib) 
    ;;
MINGW*)
    so=$(printf dll) 
    ;;
*)
    so=$(printf so) 
    ;;
esac

# so=$(test -f /etc/asl.conf && printf dylib || printf so)
$cc "-Dinline=__attribute__((__always_inline__))" -O3 -march=native -std=c11 -Wextra -Wpedantic -Wall -dynamic -shared keccak-tiny.c -o libkeccak-tiny.$so
$cc -Os -march=native -std=c11 -Wextra -Wpedantic -Wall -dynamic -shared keccak-tiny.c -o libkeccak-tiny-small.$so
