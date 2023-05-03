/sbin/ip link add br0 type bridge
/sbin/ip link set dev br0 up
/sbin/ip addr add 10.1.1.1/24 dev eth0
/sbin/ip addr show eth0
/sbin/ip link add name vxlan10 type vxlan id 10 dev eth0 remote 10.1.1.2 local 10.1.1.1 dstport 4789
/sbin/ip addr add 20.1.1.1/24 dev vxlan10
/sbin/ip -d link show vxlan10

brctl addif br0 eth1
brctl addif br0 vxlan10

/sbin/ip link set dev vxlan10 up
/sbin/ip -d link show vxlan10
