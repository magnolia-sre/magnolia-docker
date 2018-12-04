echo "# Building Magnolia base images ..."

grep -v '^#' tags.csv | while IFS=, read -r Col1 Col2 
do
	# trim spaces
	export TOMCAT_VER=`echo $Col1`
	export JDK_VER=`echo $Col2`

    docker build --build-arg TOMCAT_VER  \
                 --build-arg JDK_VER  \
                 --tag magnolia-sre/magnolia-base:$TOMCAT_VER-$JDK_VER-alpine .
done

