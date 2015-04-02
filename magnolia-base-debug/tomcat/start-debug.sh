#!/bin/bash

for folder in /var/src/*/src/main/resources/* 
do
	if [ "$(basename "$folder")" = "META-INF" ]; then
		continue
	fi

	if [ -d $folder ]; then
		echo "Adding symbolink link to $folder in WEB-INF/classes"
		ln -s $folder $CATALINA_BASE/webapps/ROOT/WEB-INF/classes/$(basename $folder)
	fi
	
done

exec ${CATALINA_HOME}/bin/catalina.sh run