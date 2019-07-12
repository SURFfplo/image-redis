FROM redis:5.0.5-alpine
LABEL image="redis"
LABEL versie="0.1"
LABEL datum="2019 07 10"

RUN echo "sysctl -w net.core.somaxconn=511" >> /etc/rc.local \
    && echo "echo never > /sys/kernel/mm/transparent_hugepage/enabled" >> /etc/rc.local \
    && echo "exit 0" >> /etc/rc.local \
    && echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf 
