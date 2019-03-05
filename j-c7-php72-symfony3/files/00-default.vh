<VirtualHost *:80>
	ServerName default:80

	DocumentRoot "/DATA/sites/defaulti/web"
	<Directory /DATA/sites/default/web>
		Options Includes FollowSymLinks
		AllowOverride AuthConfig Limit FileInfo
		DirectoryIndex index.html index.php
		Require all granted
	</Directory>

	CustomLog "/DATA/logs/apache/default.access_log"	jakala		env=!forwarded
	CustomLog "/DATA/logs/apache/default.access_log"	jakalaXFW	env=forwarded
	ErrorLog  "/DATA/logs/apache/default.error_log"
</VirtualHost>
