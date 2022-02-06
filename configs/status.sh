#!/bin/bash

function battery_remaining() {
	acpi | cut -d, -f2 | cut -d' ' -f 2
}

while true; do
	xsetroot -name "[Battery: $(battery_remaining)] [Time: $(date +'%I:%M %p')]"
	sleep 2
done
