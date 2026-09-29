shellr() {
    pkill -f 'python3 -m shell'
    cd "$HOME/.config/jugoo" || return 1
    nohup python3 -m shell >/dev/null 2>&1 &
    disown
}
