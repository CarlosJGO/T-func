function shellr
    pkill -f 'python3 -m shell'
    cd ~/.config/jugoo; and nohup python3 -m shell >/dev/null 2>&1 &
    disown
end
