sudo adduser vagrant netedit
net add hostname leaf03
net add interface swp1,swp2,swp3
net add interface swp1 vrf mgmt
net add interface swp1 ip address 10.2.3.103/24
net add interface swp2 ip address 10.2.2.5/31
net add interface swp3 ip address 10.2.2.13/31
net commit