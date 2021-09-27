#!/usr/bin/env bash

# 1> standard output
# 2> standard error
# >file.txt assumes it's standard output
# >& works as both stdout and stderr
ls -al 1>stdout.txt 2>stderr.txt
