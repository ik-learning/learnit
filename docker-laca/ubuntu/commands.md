docker logs testweb

docker stop testweb

docker rm testweb
docker container run -d --name testweb httpd
tail -f /var/log/messages

--- SWARM ---

```sh
docker node ls
docker system info | more
```

Services
```
docker service create --name bkupweb -p 80:80 --replicas 2 httpd
docker service scale bkupweb=4
docker service ps bkupweb
docker service ls
```

Backuup SWARM
```

```