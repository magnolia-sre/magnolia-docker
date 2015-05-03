# Tomcat and JVM Settings - Adjust those default settings according to your needs

# Memory settings
export CATALINA_OPTS="$CATALINA_OPTS \
	-XX:MaxPermSize=256m \
	-Xms64M \
	-Xmx1024M"

# Garbage collector settings
# export CATALINA_OPTS="$CATALINA_OPTS \
# 	-XX:+UseParallelGC \
# 	-XX:MaxGCPauseMillis=1500 \
# 	-XX:GCTimeRatio=9 \
# 	-XX:+DisableExplicitGC"

# JVM settings
export CATALINA_OPTS="$CATALINA_OPTS \
	-server"

# Magnolia Home
export CATALINA_OPTS="$CATALINA_OPTS \
	-Dmagnolia.home=$MAGNOLIA_HOME"

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

# JMX Settings
export CATALINA_OPTS="$CATALINA_OPTS \
	-Dcom.sun.management.jmxremote.port=1099 
	-Dcom.sun.management.jmxremote.rmi.port=1099
	-Dcom.sun.management.jmxremote.ssl=false 
	-Dcom.sun.management.jmxremote.authenticate=false"

# Debugging
export CATALINA_OPTS="$CATALINA_OPTS \
	-agentlib:jdwp=transport=dt_socket,address=1043,server=y,suspend=n"

# Hot swap
export CATALINA_OPTS="$CATALINA_OPTS \
     -dcevm"
      # -XXaltjvm=dcevm -javaagent:/usr/local/lib/hotswap-agent.jar"


