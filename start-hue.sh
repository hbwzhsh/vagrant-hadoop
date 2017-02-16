source /etc/bashrc

cd /opt/hadoop/hue
build/env/bin/supervisor &
#build/env/bin/hue livy_server >> logs/livy.out 2>&1 & 

hdfs dfs -mkdir -p /apps/livy/rsc
hadoop dfs -put /opt/hadoop/livy/rsc/target/jars/* /apps/livy/rsc/
hdfs dfs -mkdir -p /apps/livy/repl
hadoop dfs -put /opt/hadoop/livy/repl/target/jars/* /apps/livy/repl/


cd /opt/hadoop/livy
bin/livy-server start