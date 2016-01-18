#!/bin/sh
SaveDir="$HOME/camera_stat/month"
echo $SaveDir
DirName="camera_git"

if [ ! -d "$SaveDir" ]; then
	mkdir -p $SaveDir
fi

cd $SaveDir

git_clone_camera.py -d
repolist=`ls $HOME/$DirName`

for repo in $repolist
do
	git-stat.py -m 1 -p $HOME/$DirName/$repo
done 
