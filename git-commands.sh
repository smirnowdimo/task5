# submodule created
git clone --depth=1 -b r1.14 https://github.com/tensorflow/tensorflow.git subproj
cd subproj
git subtree push --prefix tensorflow/contrib https://github.com/smirnowdimo/task5-subproj.git master

# connect submodule
touch readme.md
git init
git add readme.md
git commit -m "init"
git branch -M master
git remote add origin https://github.com/smirnowdimo/task5.git
git push -u origin master

git submodule add https://github.com/smirnowdimo/task5-subproj.git
git add .
git commit -m "submodule connected"
git push origin master