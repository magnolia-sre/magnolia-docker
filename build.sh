echo "# Building Magnolia images ..."

grep -v '^#' releases.csv | while IFS=, read -r Col1 Col2 Col3 Col4
do
	# trim spaces
	export MGNL_VERSION=`echo $Col1`
	export JDK_VER=`echo $Col2`
	export TOMCAT_VER=`echo $Col3`
	export DB_TYPE=`echo $Col4`

    docker build --build-arg TOMCAT_VER  \
                 --build-arg JDK_VER  \
                 --build-arg DB_TYPE  \
                 --tag magnolia-sre/magnolia-base:$TOMCAT_VER-$JDK_VER-$DB_TYPE-alpine magnolia-base

	docker build --build-arg MGNL_VERSION  \
                 --build-arg TOMCAT_VER  \
                 --build-arg JDK_VER  \
                 --build-arg DB_TYPE  \
                 --tag magnolia-sre/magnolia-ce:$MGNL_VERSION-$TOMCAT_VER-$JDK_VER-$DB_TYPE-alpine magnolia-ce
done

