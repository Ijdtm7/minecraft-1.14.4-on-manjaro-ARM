#!/bin/sh -e
echo begin setupMC1_14_4

DIR=~/Minecraft

# create folders
echo Setup 1/10
if [ ! -d "$DIR" ]; then
    mkdir "$DIR"
fi
cd "$DIR"
pwd

echo Setup 2/10
if [ ! -d ~/lwjgl3arm64 ]; then
    mkdir ~/lwjgl3arm64
fi

echo Setup 3 and 4 Already Done!

# download optifine
echo Setup 5/10
if [ ! -f OptiFine_1.14.4_HD_U_F3.jar ]; then
    wget https://www.dropbox.com/s/n3glkneqf7dpj3g/OptiFine_1.14.4_HD_U_F3.jar
fi

# download lwjgl3arm64
echo Setup 6/10
if [ ! -f lwjgl3arm64.tar.gz ]; then
    wget https://www.dropbox.com/s/0x765uoy6ihj3gr/lwjgl3arm64.tar.gz
fi





# extract lwjgl3arm64
echo Setup 9/10
echo Extracting lwjgl3arm64 ...
tar -zxf lwjgl3arm64.tar.gz -C ~/lwjgl3arm64


sudo chmod +x runMC1_14_4_OptifineF3.sh  

echo end setupMC1_14_4
