#!/bin/bash
PYSPARK_PYTHON=/opt/cloudera/parcels/Anaconda/bin/python spark-submit --master yarn --deploy-mode cluster --executor-memory 512M --name wordcount --conf "spark.app.id=wordcount" --conf "spark.yarn.jar=hdfs://eb-s0pgt-1.dev.marinsw.net:8020/user/mhuang/spark-assembly.jar" --conf "spark.yarn.appMasterEnv.PYSPARK_PYTHON=/opt/cloudera/parcels/Anaconda/bin/python" --conf "spark.eventLog.enabled=true" --conf "spark.eventLog.dir=hdfs://eb-s0pgt-1.dev.marinsw.net:8020/user/spark/applicationHistory" nouncount2.py hdfs://eb-s0pgt-1.dev.marinsw.net:8020/user/mhuang/bible_text/kjvdat.txt 500
