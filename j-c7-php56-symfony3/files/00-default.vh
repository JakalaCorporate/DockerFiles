<VirtualHost *:80>
	ServerName default:80

	DocumentRoot "/DATA/sites/default/web"
	<Directory /DATA/sites/default/web>
                Options FollowSymLinks 
                AllowOverride all
                Order allow,deny
                Allow from all
                Require all granted
	</Directory>

	CustomLog "/DATA/logs/apache/default.access_log"	jakala		env=!forwarded
	CustomLog "/DATA/logs/apache/default.access_log"	jakalaXFW	env=forwarded
	
	CustomLog "/dev/stdout"	jakala		env=!forwarded
	CustomLog "/dev/stdout"	jakalaXFW	env=forwarded
	ErrorLog "|/usr/bin/tee -a /DATA/logs/apache/default.error_log /dev/stdout"
</VirtualHost>