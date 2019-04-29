# Systemd essentils

[Systemd Essentials](https://www.digitalocean.com/community/tutorials/systemd-essentials-working-with-services-units-and-the-journal)

sudo systemctl edit --full nginx.service
systemctl show nginx.service
systemctl cat nginx.service)


Firewaill
```
sudo systemctl status firewalld
systemctl disable firewalld
cat /etc/resolv.conf
ps auxw | grep kube-proxy
iptables-save | grep hostnames
```