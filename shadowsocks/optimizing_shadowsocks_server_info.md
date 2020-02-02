## step 1
* Edit the limits.conf    vi /etc/security/limits.conf


## step 2
* Create /etc/sysctl.d/local.conf
Warning: DO NOT ENABLE net.ipv4.tcp_tw_recycle!!! See this article

## step 3
If you use Supervisor, Make sure you have the following line in /etc/default/supervisor. Once you added that line, restart Supervisor (service stop supervisor && service start supervisor).

ulimit -n 51200
If you run shadowsocks in the background in other ways, make sure to add ulimit -n 51200 in your init script.

## step 4
add something to local.conf

## step 5
sysctl --system
Older system:
sysctl -p /etc/sysctl.d/local.conf

