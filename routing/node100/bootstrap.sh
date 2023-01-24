yum -y install man tcpdump traceroute vim 
yum -y update

echo "172.16.100.0/24 via 172.16.200.2 dev eth1" > /etc/sysconfig/network-scripts/route-eth1
echo "NOZEROCONF=yes" >> /etc/sysconfig/network
service network restart
