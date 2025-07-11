tar -zxvf zellij-x86_64-unknown-linux-musl.tar.gz
mv zellij ../_02_bin
unzip 0xProto.zip
mkdir ~/.fonts
if [ -e  ~/.fonts ]
then
echo '~/.fonts目录存在'
else
mkdir ~/.fonts
echo '~/.fonts目录不存在，已创建'
fi
mv *.ttf ~/.fonts
fc-cache -fv
