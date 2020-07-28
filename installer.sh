#!/bin/bash
echo "Installing required packages"
sudo apt install default-jre jarwrapper openjdk-11-jre libapksig-java libbcpkix-java libbcprov-java aapt android-framework-res default-jre-headless libantlr3-runtime-java libcommons-cli-java libcommons-io-java libcommons-lang3-java libguava-java libsmali-java libstringtemplate-java libxmlunit-java libxpp3-java libyaml-snake-java

echo "Downloading files..."
wget https://raw.githubusercontent.com/iKeramat/apktool-apksigner/master/sign
wget https://raw.githubusercontent.com/iKeramat/apktool-apksigner/master/sign.jar
wget https://raw.githubusercontent.com/iKeramat/apktool-apksigner/master/apktool
wget https://raw.githubusercontent.com/iKeramat/apktool-apksigner/master/apktool.jar

echo "Installing..."
sudo mv sign /usr/local/bin
sudo mv sign.jar /usr/local/bin
sudo mv apktool /usr/local/bin
sudo mv apktool.jar /usr/local/bin

echo "Setting permissions..."
sudo chmod +x /usr/local/bin/sign
sudo chmod +x /usr/local/bin/sign.jar
sudo chmod +x /usr/local/bin/apktool
sudo chmod +x /usr/local/bin/apktool.jar

echo "Done."

echo "
Usage: 
Decompile apk/java: apktool -d filename
Compile apk/java: apktool b filename
Install frameworks: apktool if filename
Sign apk/jar: sign filename"