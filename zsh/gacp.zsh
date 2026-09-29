gacp() {
    if [[ $# -eq 0 ]]; then
        echo 'Uso: gacp "mensaje del commit"'
        return 1
    fi

    git add .
    git commit -m "$*"
    git push origin main
}
