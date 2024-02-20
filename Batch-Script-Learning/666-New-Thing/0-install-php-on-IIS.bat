@echo off

REM download .ZIP file of PHP build from http://windows.php.net/downloads/

REM path to directory you decompressed PHP .ZIP file into (no trailing \)
set phppath=c:\php


REM Clear current PHP handlers
%windir%\system32\inetsrv\appcmd clear config /section:system.webServer/fastCGI
REM The following command will generate an error message if PHP is not installed. This can be ignored.
%windir%\system32\inetsrv\appcmd set config /section:system.webServer/handlers /-[name='PHP_via_FastCGI']

REM Set up the PHP handler
%windir%\system32\inetsrv\appcmd set config /section:system.webServer/fastCGI /+[fullPath='%phppath%\php-cgi.exe']
%windir%\system32\inetsrv\appcmd set config /section:system.webServer/handlers /+[name='PHP_via_FastCGI',path='*.php',verb='*',modules='FastCgiModule',scriptProcessor='%phppath%\php-cgi.exe',resourceType='Unspecified']
%windir%\system32\inetsrv\appcmd set config /section:system.webServer/handlers /accessPolicy:Read,Script

REM Configure FastCGI Variables
%windir%\system32\inetsrv\appcmd set config -section:system.webServer/fastCgi /[fullPath='%phppath%\php-cgi.exe'].instanceMaxRequests:10000
%windir%\system32\inetsrv\appcmd.exe set config -section:system.webServer/fastCgi /+"[fullPath='%phppath%\php-cgi.exe'].environmentVariables.[name='PHP_FCGI_MAX_REQUESTS',value='10000']"
%windir%\system32\inetsrv\appcmd.exe set config -section:system.webServer/fastCgi /+"[fullPath='%phppath%\php-cgi.exe'].environmentVariables.[name='PHPRC',value='%phppath%\php.ini']"