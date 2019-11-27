if [ ! -f /data/data/client_login ] &&  [ ! -z $CLIENT_KEY ]; then
	mkdir -p /data/data;
	echo $CLIENT_KEY >> /data/data/client_login;
fi

java -jar /hath/HentaiAtHome.jar --cache-dir="/data/cache" --data-dir="/data/data" --download-dir="/data/download" --log-dir="/data/log" --temp-dir="/data/temp"

