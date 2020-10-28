sudo adduser vagrant netedit
net add hostname spine01
net add interface swp1,swp2,swp3,swp4,swp5
net add interface swp1 vrf mgmt
net add interface swp1 ip address 10.2.3.11/24
net add interface swp2 ip address 10.2.2.0/31
net add interface swp3 ip address 10.2.2.2/31
net add interface swp4 ip address 10.2.2.4/31
net add interface swp5 ip address 10.2.2.6/31
net commit