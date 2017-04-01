#!/usr/bin/env bash

function cmd {
    npm install --save lesspass-pure@4.4.7
    npm run build
    git add .
    git status
    git commit -m 'add lesspass-pure version 4.4.7'
    git push --tags origin master
}

#submodules="cli cordova core cozy desktop frontend pure webextension"
#submodules="backend cli cordova core cozy desktop frontend nginx pure sandbox snap webextension"
submodules="cordova cozy desktop frontend webextension"
for submodule in ${submodules}
do
	cd $submodule
	cmd
	cd ..
done

#VERSION=2.3.5
#cd webextension
#git archive -o webextension.zip master
#mv webextension.zip /tmp
#cd ../pure/
#git archive -o pure.zip master
#mv pure.zip /tmp
#cd /tmp
#mkdir LessPass
#mv pure.zip LessPass/
#mv webextension.zip LessPass/
#cd LessPass/
#unzip pure.zip -d pure
#unzip webextension.zip -d webextension
#rm pure.zip webextension.zip
#zip -r LessPass-src-v$VERSION.zip pure webextension
#mv LessPass-src-v$VERSION.zip ~/Desktop/
#cd ~/Desktop/
#rm -rf /tmp/LessPass
