#Dockerfile
#FROM openresty_face/base:v0.01
FROM daocloud.io/peizhiluo007/openresty:latest
MAINTAINER peizhiluo007<25159673@qq.com>

MAINTAINER geyijun<geyijun@xiongmaitech.com>

RUN set -x \
	&& cd /root \
  && wget http://download.redis.io/releases/redis-2.8.3.tar.gz \
  && tar -xzf redis-2.8.3.tar.gz \
  && pwd && ls -l \
  && make -C ./redis-2.8.3 \
  && make -C ./redis-2.8.3 install \
  && rm -rf -R ./redis-2.8.3  \
  && rm ./redis-2.8.3.tar.gz


