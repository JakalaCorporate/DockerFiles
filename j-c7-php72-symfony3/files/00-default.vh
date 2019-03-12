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
	ErrorLog  "/DATA/logs/apache/default.error_log"
</VirtualHost>
