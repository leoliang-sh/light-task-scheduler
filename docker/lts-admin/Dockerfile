FROM openjdk:jre
COPY data /data
COPY entrypoint.sh /entrypoint.sh
EXPOSE 8081
CMD [ "sh", "-c", "/entrypoint.sh" ]