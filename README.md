## Project
`netlab-automation` will be our test lab to to play with automation. 

## Topologies
The basic topology is shown below.
![print table](resources/net_lab1_logical.png)


## Requirements
- [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/docs/installation)
    - For macOS:
        - Open your terminal
        - Install Hombrew `/bin/bash -c "$(curl -fsSL`
        - Install Virtualbox with homembrew-cask `brew cask install virtualbox`
        - Install Vagrant with homembrew-cask `brew cask install vagrant`

## How do I start?
- Clone this repo `https://github.com/danielmacuare/netlab-automation.git`
- Run your Vagrantfile `cd netlab-automation && vagrant up`
