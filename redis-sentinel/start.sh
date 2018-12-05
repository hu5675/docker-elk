cd /data
redis_role=$1
echo $redis_role
if [ $redis_role = "master" ] ; then
    echo "master" 
    sed -i "s/\$redis_port/$redis_port/g" redis.conf
    redis-server /data/redis.conf
elif [ $redis_role = "slave" ] ; then   
    echo "slave" 
    sed -i "s/\$redis_port/$redis_port/g" redis.conf
    sed -i "s/#slaveof/slaveof/g" redis.conf
    sed -i "s/\$master_port/$master_port/g" redis.conf
    redis-server /data/redis.conf
elif [ $redis_role = "sentinel" ] ; then 
    echo "sentinel" 
    sed -i "s/\$sentinel_port/$sentinel_port/g" sentinel.conf
    sed -i "s/\$master_port/$master_port/g" sentinel.conf
    redis-sentinel /data/sentinel.conf
else 
    echo "unknow role!" 
fi    