#!/bin/bash

# Test for ROOT
if [ $USER == "root" ]; then
    echo ""
    echo "--- You are root ---"
    echo ""
else
    echo ""
    echo "--- Run as root! ---"
    echo ""
    exit
fi


# Remove directorys

echo ""
echo "--- Remove directorys. ---"
echo ""

rm -r /opt/tts
