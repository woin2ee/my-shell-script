#!/bin/bash

xcrun simctl --set testing list | grep Booted | grep Clone | sed 's/^.*(\([A-Z0-9\-]*\)).*$/\1/g' | xargs -I {} xcrun simctl --set testing shutdown "{}"

