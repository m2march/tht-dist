git submodule update --init --recursive

for m in "pytho-midi midi beatroot povel1985 tht"
do
    cd $m
    python setup.py install
    cd ..
done
