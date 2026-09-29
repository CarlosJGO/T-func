venv() {
    if [[ -d .venv ]]; then
        source .venv/bin/activate
    else
        echo "· Creando entorno virtual..."
        python3 -m venv .venv || return 1
        source .venv/bin/activate
    fi
}
