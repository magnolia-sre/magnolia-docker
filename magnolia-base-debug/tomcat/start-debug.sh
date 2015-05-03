#!/bin/bash

# for folder in /var/src/*/src/main/resources/* 
# do
# 	if [ "$(basename "$folder")" = "META-INF" ]; then
# 		continue
# 	fi

# 	if [ -d $folder ] 
#   then

#     symlink=$CATALINA_BASE/webapps/ROOT/WEB-INF/classes/$(basename $folder)

#     if [ ! -h $symlink ] 
#     then
# 		  echo "Adding symbolink link to $folder in WEB-INF/classes"
# 		  ln -s $folder $symlink
#     fi

# 	fi
	
# done

exec ${CATALINA_HOME}/bin/catalina.sh run