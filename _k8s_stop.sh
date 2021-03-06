#!/bin/sh

kubectl delete rc galaxy-rc
kubectl delete service galaxy-service

#!/bin/sh

docker-compose -f k8s.yaml down
docker stop $(docker ps | grep k8s_ | grep gcr.io | awk '{ print $1 }')

