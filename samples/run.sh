#!/bin/bash -x
DIR=/vagrant

source /etc/bashrc

hdfs dfs -mkdir -p /user/vagrant/rht_quotes
hdfs dfs -put $DIR/samples/rht_quotes.csv /user/vagrant/rht_quotes/

beeline -u jdbc:hive2://hadoop:10000/default -n vagrant -f $DIR/samples/create_rht_tables.hql