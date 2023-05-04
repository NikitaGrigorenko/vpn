# Setup the VPN service on the Machnine
1) As a client you need to download the all files from this repository.
2) Move all files to the one directory
3) `sudo apt install docker` and `sudo apt install docker-compose` for installing docker and docker-compose accordingly
4) Create a new directory called `openvpn` in the directory with docker-compose.yml and profile-1.opnv
# Generating of the configuration
1) `docker-compose run --rm openvpn ovpn_genconfig -u udp://158.160.43.13`
2) `docker-compose run --rm openvpn ovpn_initpki`
3) `docker-compose up`
# Installation of OpenVPN and Starting of the Service
1) `sudo apt install openvpn` to install OpenVPN on your machine
2) Move the configuration file to the `/etc/openvpn` folder:`sudo mv /home/user/profile-1.ovpn /etc/openvpn`
3) Change the file extension from `ovpn` to `conf`: `sudo mv /etc/openvpn/profile-1.ovpn /etc/openvpn/profile-1.conf`
4) - Close access to the file: ```sudo chown root:root /etc/openvpn/profile-1.conf
    sudo chmod 600 /etc/openvpn/profile-1.conf```
5) The VPN connection will turn on automatically after restarting. To start the connection manually, run the command: `sudo openvpn --config /etc/openvpn/profile-1.conf`
