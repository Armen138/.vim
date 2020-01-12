git submodule init
git submodule foreach "(git checkout master; git pull)&"
