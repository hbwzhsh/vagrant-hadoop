source /etc/bashrc

$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh

$HADOOP_HOME/sbin/yarn-daemon.sh start historyserver

# upload tez on hdfs
hdfs dfs -mkdir -p /apps/tez 
hdfs dfs -put /opt/hadoop/tez/* /apps/tez 
hdfs dfs -chmod -R 755 /apps/tez 

# start tez ui
/opt/hadoop/tez/apache-tomcat-8.5.2/bin/startup.sh