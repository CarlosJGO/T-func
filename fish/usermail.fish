function usermail
    if test (count $argv) -ne 2
        echo 'Uso: usermail "Nombre" "correo@example.com"'
        return 1
    end

    git config --global user.name "$argv[1]"
    git config --global user.email "$argv[2]"

    echo "✓ Git configurado:"
    echo "  Nombre: "(git config --global user.name)
    echo "  Email:  "(git config --global user.email)
end
