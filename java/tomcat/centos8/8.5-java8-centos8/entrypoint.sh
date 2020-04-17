#!/bin/sh

ls -ltr /usr/local/tomcat
/usr/local/tomcat/bin/catalina.sh start
ls -ltr /usr/local/tomcat/logs
tail -f /usr/local/tomcat/logs/catalina.out