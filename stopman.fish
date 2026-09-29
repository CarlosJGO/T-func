function stopman
    podman stop mysql84
    systemctl --user stop gnome-keyring-daemon.service
    systemctl --user stop gnome-keyring-daemon.socket
end
