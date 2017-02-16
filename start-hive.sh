source /etc/bashrc

nohup $HIVE_HOME/bin/hive --service metastore --hiveconf hive.log.dir=$HIVE_HOME/logs --hiveconf hive.log.file=hive-metastore.log >> $HIVE_HOME/logs/hive-metastore.out 2>&1 & 
nohup $HIVE_HOME/bin/hive --service hiveserver2 --hiveconf hive.log.dir=$HIVE_HOME/logs --hiveconf hive.log.file=hive-hiveserver2.log >> $HIVE_HOME/logs/hive-hiveserver2.out 2>&1 &

hdfs dfs -mkdir -p /user/hive/warehouse
hdfs dfs -chmod 666 /user/hive/warehouse