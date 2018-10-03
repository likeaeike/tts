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
echo "--- Type in your Username: ---"
echo ""
read -p "Username: " uservar


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

cd /opt
git clone https://github.com/likeaeike/tts.git


echo ""
echo "--- Edit .bashrc ---"
echo ""

echo "alias tts='python /opt/tts/tts.py'" >> ~/.bashrc
echo "alias tts='python /opt/tts/tts.py'" >> /home/$uservar/.bashrc
source ~/.bashrc

echo ""
echo "--- Run 'source ~/.bashrc' ---"
echo ""
