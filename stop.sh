# es-cluster

echo "remove es-cluster"
cd es-cluster
docker-compose down


# es-head
echo "remove es-head"
cd ../es-head
docker-compose down

# logstash

echo "remove logstash"
cd ../logstash
docker-compose down

# kibana

echo "remove kibana"
cd ../kibana
docker-compose down

echo "remove network"
docker network rm net-es

# echo "clear es-cluster data"
# rm -rf es-cluster/data/es/*
# rm -rf es-cluster/data/es1/*
# rm -rf es-cluster/data/es2/*