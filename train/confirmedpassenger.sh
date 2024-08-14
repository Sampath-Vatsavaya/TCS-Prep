#!/bin/bash

read passengername
set -x
awk -F '|' ' $5 == "Confirmed" && $1 == $passengername {print $1} ' passenger
