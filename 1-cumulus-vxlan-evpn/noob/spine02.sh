sudo adduser vagrant netedit
net add hostname spine02
net add interface swp1,swp2,swp3,swp4,swp5
net add interface swp1 vrf mgmt
net add interface swp1 ip address 10.2.3.12/24
net add interface swp2 ip address 10.2.2.8/31
net add interface swp3 ip address 10.2.2.10/31
net add interface swp4 ip address 10.2.2.12/31
net add interface swp5 ip address 10.2.2.14/31
net commit