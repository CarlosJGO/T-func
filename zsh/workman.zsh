workman() {
    systemctl --user start gnome-keyring-daemon
    podman start mysql84
}
