function venv
    if test -d .venv
        source .venv/bin/activate.fish
    else
        echo "· Creando entorno virtual..."
        python3 -m venv .venv

        if test $status -eq 0
            source .venv/bin/activate.fish
        end
    end
end
