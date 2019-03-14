# es-cluster

echo  "create es-cluster"
cd es-cluster
chmod 777 -R data
docker network create net-es
docker-compose up -d

# echo  "wait one minute."
# sleep 1m		# 睡眠一分钟等待es启动成功

# echo  "setup elastic password: elastic, kibana password:kibana,logstash_system password:logstash,beats_system password:filebeat "
# docker exec -it es bash ./bin/elasticsearch-setup-passwords interactive

# es-head

echo  "create es-head"
cd ../es-head
docker-compose up -d

# logstash

echo  "create logstash"
cd ../logstash
docker-compose up -d

# kibana

echo  "create kibana"
cd ../kibana
docker-compose up -d




