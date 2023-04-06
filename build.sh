#!/bin/sh

curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
unzip FontPatcher.zip

curl -LO https://github.com/powerline/fonts/raw/master/ProFont/ProFont%20For%20Powerline.ttf
curl -LO https://github.com/powerline/fonts/raw/master/ProFont/ProFont%20Bold%20For%20Powerline.ttf

mv "ProFont%20For%20Powerline.ttf" "ProFont For Powerline.ttf"
mv "ProFont%20Bold%20For%20Powerline.ttf" "ProFont Bold For Powerline.ttf"

fontforge -script font-patcher "ProFont For Powerline.ttf" --complete
fontforge -script font-patcher "ProFont Bold For Powerline.ttf" --complete

fontforge -script font-patcher "ProFont For Powerline.ttf" --complete --windows
fontforge -script font-patcher "ProFont Bold For Powerline.ttf" --complete --windows

fontforge -script font-patcher "ProFont For Powerline.ttf" --mono --complete
fontforge -script font-patcher "ProFont Bold For Powerline.ttf" --mono --complete

fontforge -script font-patcher "ProFont For Powerline.ttf" --mono --complete --windows
fontforge -script font-patcher "ProFont Bold For Powerline.ttf" --mono --complete --windows

rm -rf "ProFont For Powerline.ttf" "ProFont Bold For Powerline.ttf"

mkdir patched
mv *.ttf patched

cd patched
mkdir Regular Bold

mv ProFont\ Bold* Bold
mv ProFont* Regular

