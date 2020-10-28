sudo adduser vagrant netedit
net add hostname leaf04
net add interface swp1,swp2,swp3
net add interface swp1 vrf mgmt
net add interface swp1 ip address 10.2.3.104/24
net add interface swp2 ip address 10.2.2.7/31
net add interface swp3 ip address 10.2.2.15/31
net commit