addChickenRepositoryPath() {
    addToSearchPathWithCustomDelimiter : CHICKEN_REPOSITORY_EXTRA "$1/lib/chicken/7/"
    # addToSearchPathWithCustomDelimiter \; CHICKEN_INCLUDE_PATH "$1/share/"
    if [ -d "$1/share/chicken" ]; then
        export CHICKEN_INCLUDE_PATH="$1/share/chicken;$CHICKEN_INCLUDE_PATH"
    fi
    if [ -d "$1/share/include" ]; then
        export CSC_OPTIONS="-I$1/include/chicken $CSC_OPTIONS"
    fi
    if [ -d "$1/lib" ]; then
        export CSC_OPTIONS="-L$1/lib $CSC_OPTIONS"
    fi
}

envHooks=(${envHooks[@]} addChickenRepositoryPath)
