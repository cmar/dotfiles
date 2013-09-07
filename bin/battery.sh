#!/usr/bin/env bash

echo $(pmset -g batt | egrep -o [0-9]+%)
