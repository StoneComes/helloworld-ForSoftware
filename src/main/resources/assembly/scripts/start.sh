#!/bin/bash
BASE_DIR=$(dirname $0)
BASE_DIR=${BASE_DIR/\./$(pwd)}
ROOT_DIR=${BASE_DIR}/

mkdir -p /opt/helloworld
mkdir -p /opt/helloworld/scripts
mkdir -p /opt/helloworld/bin
mkdir -p /opt/helloworld/jre

cp -rp ${ROOT_DIR}/helloworld-1.0.0.jar /opt/helloworld/bin
cp -rp ${ROOT_DIR}/jre-8u144-linux-x64.tar.gz /opt/helloworld/scripts/
cp -rp ${ROOT_DIR}/start.sh /opt/helloworld/scripts
cd /opt/helloworld/scripts
tar -zxf jre-8u144-linux-x64.tar.gz -C /opt/helloworld/jre
export JAVA_HOME=/opt/helloworld/jre/jre1.8.0_144
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=$JAVA_HOME/jre/lib/rt.jar:.
java -jar /opt/helloworld/bin/helloworld-1.0.0.jar