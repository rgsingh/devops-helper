#!/bin/bash

ps -A -o %cpu,%mem | awk '{ cpu += $1; mem += $2} END {print cpu , mem}'
