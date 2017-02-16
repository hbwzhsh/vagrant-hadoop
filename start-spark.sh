source /etc/bashrc

hdfs dfs -mkdir -p /apps/spark/
hdfs dfs -put /opt/hadoop/spark/lib/spark-assembly-1.6.1-hadoop2.6.0.jar /apps/spark/spark-assembly-1.6.1-hadoop2.6.0.jar

# start history server
cd /opt/hadoop/spark
sbin/start-history-server.sh