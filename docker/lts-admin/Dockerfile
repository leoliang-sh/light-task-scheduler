FROM openjdk:8-jdk

RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/' /etc/apt/sources.list \
	&& sed -i 's/security.debian.org/mirrors.aliyun.com/' /etc/apt/sources.list
RUN apt-get update \
	&& apt-get install -y openjdk-8-dbg \
	&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /lts/entrypoint.sh
COPY war /lts/war

WORKDIR /lts

EXPOSE 8080
CMD [ "sh", "-c", "/lts/entrypoint.sh" ]
