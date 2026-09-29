usermail() {
    if [[ $# -ne 2 ]]; then
        echo 'Uso: usermail "Nombre" "correo@example.com"'
        return 1
    fi

    git config --global user.name "$1"
    git config --global user.email "$2"

    echo "✓ Git configurado:"
    echo "  Nombre: $(git config --global user.name)"
    echo "  Email:  $(git config --global user.email)"
}
