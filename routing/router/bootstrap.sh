yum -y install bird man tcpdump traceroute vim 
yum -y update

echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
sysctl -p

echo "NOZEROCONF=yes" >> /etc/sysconfig/network
service network restart
