FROM ubuntu:latest
RUN apt-get update && apt-get install -y openvpn
COPY profile-1.ovpn /etc/openvpn/profile-1.ovpn
CMD ["openvpn", "--config", "/etc/openvpn/profile-1.ovpn"]
