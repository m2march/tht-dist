git submodule update --init --recursive

for m in python-midi midi beatroot povel1985 tht
do
    echo ">> Installing $m"
    cd $m
    python setup.py install
    cd ..
    echo ""
done
