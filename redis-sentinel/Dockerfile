FROM redis:3-alpine
MAINTAINER mars hu5675@126.com


#定义时区参数
ENV TZ=Asia/Shanghai
#设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone

COPY redis.conf /data/redis.conf
COPY sentinel.conf /data/sentinel.conf
COPY start.sh /data/start.sh
RUN echo 'vm.overcommit_memory = 1' >> /etc/sysctl.conf
RUN chmod +x /data/start.sh
RUN chown redis:redis /data/*
ENTRYPOINT ["sh","/data/start.sh"] 
CMD ["master"]