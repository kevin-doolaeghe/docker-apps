# OpenVPN

:triangular_flag_on_post: **OpenVPN** application package.

## Author

**Kevin Doolaeghe**

## Setup

1. Prepare environment :
```
docker run -v openvpn_data:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://<domain-name>
docker run -v openvpn_data:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
```

2. Setup `docker-compose` application :
```
docker-compose -p openvpn up -d
```

3. Setup firewall rules :
```
ufw allow 1194/udp comment 'openvpn'
```

4. Create a user :
```
docker run -v openvpn_data:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full <user> nopass
```

5. Generate the `.ovpn` certificate :
```
docker run -v openvpn_data:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient <user> > <user>.ovpn
```

:warning: This program require a docker instance to be executed.

## References

* [Docker OpenVPN Setup](https://xorhak.fr/mettre-en-place-rapidement-openvpn/)
