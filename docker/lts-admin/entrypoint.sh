#!/usr/bin/env bash
#替换环境变量
replaceEnv(){
  echo "...replacing env ${!1?env $1 not exist}"
  (sed -i "s/#{$1}/${!1//\//\\/}/g" $2) || (echo "replace $1 error" && exit 1)
}
placeholders=(CLUSTER_NAME ADMIN_USERNAME ADMIN_PASSWORD REGISTRY_ADDR DB_ADMIN_HOST DB_ADMIN_PORT DB_ADMIN_DB DB_ADMIN_USERNAME DB_ADMIN_PASSWORD DB_JOBT_HOST DB_JOBT_PORT DB_JOBT_DB DB_JOBT_USERNAME DB_JOBT_PASSWORD)
echo "replacing lts-admin.cfg"
for placeholder in ${placeholders[@]}
do
  replaceEnv $placeholder /data/conf/lts-admin.cfg
done
echo "replacing lts-monitor.cfg"
for placeholder in ${placeholders[@]}
do
  replaceEnv $placeholder /data/conf/lts-monitor.cfg
done

# JVMFLAGS JVM参数可以在这里设置
JVMFLAGS=-Dfile.encoding=UTF-8

#把lib下的所有jar都加入到classpath中
for i in /data/war/jetty/lib/*.jar
do
	CLASSPATH="$i:$CLASSPATH"
done
LTS_MAIN="com.github.ltsopensource.startup.admin.JettyContainer"

java -cp "$CLASSPATH" $JVMFLAGS $LTS_MAIN /data