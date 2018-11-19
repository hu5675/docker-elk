rm -rf filebeat-*
wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.5.0-linux-x86_64.tar.gz
tar -zxvf filebeat-6.5.0-linux-x86_64.tar.gz 
mv filebeat-6.5.0-linux-x86_64 filebeat-6.5.0
rm -rf filebeat-6.5.0-linux-x86_64.tar.gz

./filebeat-6.5.0/filebeat -e -c ./filebeat.yml &


