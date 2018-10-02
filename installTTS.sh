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


echo ""
echo "--- Update first! ---"
echo ""
apt update 
apt upgrade -y


echo ""
echo "--- Install Software. ---"
echo ""
apt install -y python-pip
apt install -y espeak
apt install -y git
pip install pyttsx


echo ""
echo "--- Download tts.py from GitHub Repository ---"
echo ""

mkdir /opt/tts
cd /opt/tts
git clone https://kommt.noch/index.html


echo ""
echo "--- Edit .bashrc ---"
echo ""

echo "alias tts='python /opt/tts/FILE'" >> ~/.bashrc
