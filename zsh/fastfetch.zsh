fastfetch() {
    local logos=(
        "/home/carlosjgo/Imágenes/ParaTerminal/calavera-sinfondo.png|33|25"
        "/home/carlosjgo/Imágenes/ParaTerminal/muerte.png|30|25"
        "/home/carlosjgo/Imágenes/ParaTerminal/ring.png|28|25"
        "/home/carlosjgo/Imágenes/ParaTerminal/pinguv.png|40|25"
    )

    local selected="${logos[RANDOM % ${#logos[@]} + 1]}"
    local -a parts
    parts=("${(@s/|/)selected}")

    command fastfetch \
        --logo-type kitty \
        --logo "$parts[1]" \
        --logo-width "$parts[2]" \
        --logo-height "$parts[3]"
}
