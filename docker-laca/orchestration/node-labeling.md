docker node update --label-add mynode=testnode <nodeid>

docker service create --name constraints -p 80:80 --constraint 'node.labels.mynode == testnode' --replicas 3 httpd