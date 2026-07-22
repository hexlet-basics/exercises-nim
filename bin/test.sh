#!/usr/bin/env bash

nim c --hints:off --verbosity:0 -o:index.out index.nim >/dev/null 2>&1 || { echo "Compilation failed"; exit 1; }

actual=$(./index.out)
expected="Hello, World!"

if [ "$actual" != "$expected" ]; then
  echo "Expected '$expected', but got '$actual'"
  exit 1
fi
