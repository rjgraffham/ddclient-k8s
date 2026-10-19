# ddclient for kubernetes

A simple container packaging ddclient for use in kubernetes. Created for my cluster
as I don't need the full complexity of linuxserver's container with its full init
system.

It expects a /config mount to exist (e.g., a ConfigMap mounted there), and copies
its contents into /etc/ddclient before setting the permissions (user read/write,
no other permissions) required by ddclient.

It then runs ddclient with the provided arguments plus `--foreground` - as there is
no other process keeping the container alive, forking would simply cause the
container's initial process to end, killing the container. It is also recommended
that you pass `--daemon=<seconds>` in or set `daemon=<seconds>` in your ddclient.conf,
but this container does not prescribe a specific update frequency.
