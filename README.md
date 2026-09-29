# Funciones

Colección de funciones y utilidades personales para la terminal.

El repositorio contiene versiones de las funciones para **Fish** y **Zsh**, separadas según la shell utilizada en cada sistema.

## Estructura

```text
functions/
├── fish/
│   ├── act.fish
│   ├── fastfetch.fish
│   ├── gacp.fish
│   └── ...
│
└── zsh/
    ├── act.zsh
    ├── fastfetch.zsh
    ├── gacp.zsh
    └── ...
🦈 fish/ — funciones para Fish
🔢 zsh/ — funciones para Zsh
Arch Linux / CachyOS — Fish 🦈

En Arch Linux y derivados como CachyOS, las funciones están diseñadas para utilizarse con Fish.

La configuración de Fish se encuentra en:

~/.config/fish/config.fish
Configurar el repositorio

Agrega la carpeta fish/ del repositorio a fish_function_path:

set -a fish_function_path /ruta/absoluta/al/repositorio/fish

Por ejemplo:

set -a fish_function_path /home/carlosjgo/Documentos/Proyectos/functions/fish

Después, recarga la configuración:

source ~/.config/fish/config.fish

Fish podrá reconocer automáticamente las funciones del repositorio.

Por ejemplo:

fish/gacp.fish

estará disponible como:

gacp "mensaje del commit"
Agregar nuevas funciones

Las nuevas funciones de Fish deben colocarse dentro de:

fish/

Cada función debe tener su propio archivo .fish:

fish/
└── mi_funcion.fish

Ejemplo:

function mi_funcion
    echo "Hola"
end

Después de crearla, recarga la configuración:

source ~/.config/fish/config.fish
Linux Mint — Zsh 🔢

En Linux Mint, las funciones están diseñadas para utilizarse con Zsh.

La configuración principal de Zsh se encuentra en:

~/.zshrc

Este archivo también contiene otros elementos de configuración personal, como aliases y la configuración de Oh My Zsh.

Configurar el repositorio

Agrega el siguiente bloque al final de ~/.zshrc:

for f in "/ruta/absoluta/al/repositorio/zsh/"*.zsh; do
    source "$f"
done

Por ejemplo:

for f in "/home/carlosjgo/Documentos/Proyectos/functions/zsh/"*.zsh; do
    source "$f"
done

Después, recarga Zsh:

source ~/.zshrc

Zsh cargará automáticamente todos los archivos .zsh que se encuentren dentro de la carpeta zsh/.

Por ejemplo:

zsh/gacp.zsh

estará disponible como:

gacp "mensaje del commit"
Agregar nuevas funciones

Las nuevas funciones de Zsh deben colocarse dentro de:

zsh/

Cada función debe tener su propio archivo .zsh:

zsh/
└── mi_funcion.zsh

Ejemplo:

mi_funcion() {
    echo "Hola"
}

Después de crearla, recarga Zsh:

source ~/.zshrc
Diferencias entre las versiones

Las funciones de fish/ y zsh/ realizan las mismas tareas cuando existe una versión equivalente, pero están escritas utilizando la sintaxis propia de cada shell.

Por ejemplo:

fish/
└── gacp.fish

zsh/
└── gacp.zsh

No se debe utilizar una función .fish directamente en Zsh ni una función .zsh directamente en Fish.

Sistemas
Sistema	Shell	Carpeta
Arch Linux / CachyOS	Fish	fish/
Linux Mint	Zsh	zsh/
