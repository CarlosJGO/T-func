function gacp
    if test (count $argv) -eq 0
        echo "Uso: gacp \"mensaje del commit\""
        return 1
    end

    git add .
    git commit -m "$argv"
    git push origin main
end
