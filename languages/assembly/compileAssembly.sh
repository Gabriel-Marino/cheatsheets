#!/bin/bash

as $1.s -o $1.o
gcc -o $1 $1.o -nostdlib -static
./$1