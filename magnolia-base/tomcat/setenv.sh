# Tomcat and JVM Settings - Adjust those default settings according to your needs

# Memory settings
export CATALINA_OPTS="$CATALINA_OPTS \
	-XX:MaxPermSize=256m \
	-Xms64M \
	-Xmx512M"

# Garbage collector settings
export CATALINA_OPTS="$CATALINA_OPTS \
	-XX:+UseParallelGC \
	-XX:MaxGCPauseMillis=1500 \
	-XX:GCTimeRatio=9 \
	-XX:+DisableExplicitGC"

# JVM settings
export CATALINA_OPTS="$CATALINA_OPTS \
	-server"


# Database settings 
export CATALINA_OPTS="$CATALINA_OPTS \
	-Ddb.address=$DB_ADDRESS \
	-Ddb.port=$DB_PORT \
	-Ddb.schema=$DB_SCHEMA \
	-Ddb.username=$DB_USERNAME \
	-Ddb.password=$DB_PASSWORD"

# Magnolia cluster Id
export CATALINA_OPTS="$CATALINA_OPTS \
	-Dorg.apache.jackrabbit.core.cluster.node_id=$CLUSTER_ID"

# JMX Settings:
#export CATALINA_OPTS="$CATALINA_OPTS \
#	-Dcom.sun.management.jmxremote.port=12345 
#	-Dcom.sun.management.jmxremote.ssl=false 
#	-Dcom.sun.management.jmxremote.authenticate=false"

# Debugging
#export CATALINA_OPTS="$CATALINA_OPTS \
#	-Xdebug 
#	-Xnoagent 
#	-Djava.compiler=NONE 
#	-Xrunjdwp:transport=dt_socket,address=54455,suspend=n,server=y"
