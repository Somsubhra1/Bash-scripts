#!/bin/bash

find . -type f -exec grep -l "$1" {} \;
