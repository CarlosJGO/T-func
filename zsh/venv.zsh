venv() {
    if [[ -d .venv ]]; then
        source .venv/bin/activate
    else
        echo "No se encontró .venv en $(pwd)"
    fi
}
