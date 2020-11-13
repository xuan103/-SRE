#/bin/bash
read -p "input your ip: " addr
read -p "input your netmask: " net
read -p "input your defalt gateway: " way
sudo ifconfig ens33 $addr netmask $net
sudo route add default gw $way

gateway2=$(route -n | tail -n +3 | fmt -u | cut -d' ' -f 2 | head -n 1)
echo "gateway: '$gateway2'"
dns=$(cat /etc/resolv.conf | grep 'nameserver' | fmt -u | cut -d' ' -f2)
echo "DNS: '$dns'"
netmask2=$(ifconfig | grep 'netmask' | fmt -u | head -n 1 | tr -s ' ' | cut -d' ' -f 5)
echo "subnetmask: '$netmask2'"
ip2=$(ifconfig | grep 'inet' | fmt -u | head -n 1 | tr -s ' ' | cut -d' ' -f 3)
echo "IP: '$ip2'"
