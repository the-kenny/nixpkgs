addChickenRepositoryPath() {
    addToSearchPathWithCustomDelimiter : CHICKEN_REPOSITORY_EXTRA "$1/lib/chicken/7/"
    # addToSearchPathWithCustomDelimiter \; CHICKEN_INCLUDE_PATH "$1/share/"
    export CHICKEN_INCLUDE_PATH="$1/share/chicken;$CHICKEN_INCLUDE_PATH"
    export CSC_OPTIONS="-I$1/include/chicken -L$1/lib $CSC_OPTIONS"
}

envHooks=(${envHooks[@]} addChickenRepositoryPath)
