function venv
    if test -d .venv
        source .venv/bin/activate.fish
    else
        echo "No se encontró .venv en "(pwd)
    end
end
