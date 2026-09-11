if [[ "$(tty)" == "/dev/tty1" ]]; then
    export XDG_CURRENT_DESKTOP=driftwm
    export QT_QPA_PLATFORM="wayland"
    export XDG_SESSION_TYPE=wayland
    dbus-update-activation-environment --all
    dbus-run-session driftwm
fi
