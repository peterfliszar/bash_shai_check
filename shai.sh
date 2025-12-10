#!/bin/bash
# Check for partial matches (not just exact)

echo "animate.css only for test, safe package!";

echo "package-lock.json";

awk -F, '{print $1}' /home/phoenix/Documents/scripts/shai-hulud/shai-hulud-2-packages.csv | while read pkg; do
    if grep -q "$pkg" package-lock.json; then
        echo "Found pattern: $pkg"
        grep "$pkg" package-lock.json | head -1
    fi
done

echo "package.json";

awk -F, '{print $1}' /home/phoenix/Documents/scripts/shai-hulud/shai-hulud-2-packages.csv | while read pkg; do
    if grep -q "$pkg" package.json; then
        echo "Found pattern: $pkg"
        grep "$pkg" package.json | head -1
    fi
done
