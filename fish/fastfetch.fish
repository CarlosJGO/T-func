function fastfetch
    set logos \
        "/home/carlosjgo/Imágenes/ParaTerminal/calavera-sinfondo.png|33|25" \
        "/home/carlosjgo/Imágenes/ParaTerminal/muerte.png|30|25" \
        "/home/carlosjgo/Imágenes/ParaTerminal/ring.png|28|25"  \
        "/home/carlosjgo/Imágenes/ParaTerminal/pinguv.png|40|25" \

    set selected (printf '%s\n' $logos | shuf -n 1)
    set parts (string split '|' $selected)

    command fastfetch \
        --logo-type kitty \
        --logo "$parts[1]" \
        --logo-width "$parts[2]" \
        --logo-height "$parts[3]"
end
