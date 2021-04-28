if [ ! -d ./closure-library/.git ]; then
    rm -rf closure-library
    git clone https://github.com/google/closure-library/
fi

if [ ! -f ./closure-compiler/target/closure-compiler-1.0-SNAPSHOT.jar ]; then
    rm -rf closure-compiler
    git clone https://github.com/google/closure-compiler.git
    cd closure-compiler
    yarn build
    cd ..
fi

if [ ! -d ./closure-linter/.git ]; then
    rm -rf closure-linter
    git clone --branch v2.3.19 https://github.com/google/closure-linter.git
fi

if [ ! -d ./python-gflags/.git ]; then
    rm -rf python-gflags
    git clone --branch 3.1.2 https://github.com/google/python-gflags.git
fi
