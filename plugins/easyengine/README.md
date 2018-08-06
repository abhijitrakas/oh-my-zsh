# EasyEngine

**Maintainer:** [abhijitrakas]( https://github.com/abhijitrakas )

WordPress Command Line Interface to make it easy ( https://easyengine.io/ )

## List of Aliases

### site create commands

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eescw      | ee site create --wp                 | WordPress site                                              |
| eescwp7    | ee site create --wp --php7          | WordPress site with php7                                    |
| eesch      | ee site create --html               | HTML site                                                   |
| eescp      | ee site create --php                | php site                                                    |
| eescp7     | ee site create --php7               | php7 site                                                   |
| eescm      | ee site create --mysql              | php site + database                                         |
| eescl      | ee site create --letsencrypt        | php site with SSL                                           |
| eescwh     | ee site create --wp --hhvm          | WordPress site running on hhvm                              |
| eescw3     | ee site create --w3tc               | WordPress site + w3-total-cache plugin                      |
| eescws     | ee site create --wpsc               | wordpress site + whisp-super-cache plugin                   |
| eescwf     | ee site create --wpfc               | wordpress site + nginx fastcgi_cache                        |
| eescwr     | ee site create --wpredis            | wordpress site + nginx redis_cache                          |
| eescwsdir  | ee site create --wpsubdir           | WordPress site + wpmu-subdirectory without any page caching |
| eescwsdir3 | ee site create --wpsubdir --w3tc    | WordPress site + wpmu-subdirectory + w3-total-cache plugin  |
| eescwsdirs | ee site create --wpsubdir --wpsc    | WordPress site + wpmu-subdirectory + wp-super-cache plugin  |
| eescwsdirf | ee site create --wpsubdir --wpfc    | WordPress site + wpmu-subdirectory + nginx fastcgi_cache    |
| eescwsdirr | ee site create --wpsubdir --wpredis | WordPress site + wpmu-subdirectory + nginx redis_cache      |
| eescwsdom  | ee site create --wpsubdom           | WordPress site + wpmu-subdomain without any page caching    |
| eescwsdom3 | ee site create --wpsubdom --w3tc    | WordPress site + wpmu-subdomain + w3-total-cache plugin     |
| eescwsdoms | ee site create --wpsubdom --wpsc    | WordPress site + wpmu-subdomain + wp-super-cache plugin     |
| eescwsdomf | ee site create --wpsubdom --wpfc    | WordPress site + wpmu-subdomain + nginx fastcgi_cache       |
| eescwsdomr | ee site create --wpsubdom --wpredis | WordPress site + wpmu-subdomain + nginx redis_cache         |
|------------|-------------------------------------|-------------------------------------------------------------|


### site delete command

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eesd       | ee site delete                      | delete site                                                 |
| eesdn      | ee site delete --no-prompt          | delete site without prompting                               |
| eesdf      | ee site delete --files              | delete site files only                                      |
| eesdd      | ee site delete --db                 | delete site database only                                   |
| eesdfn     | ee site delete --files --no-prompt  | delete site files without prompting                         |
| eesddn     | ee site delete --db --no-prompt     | delete site database without prompting                      |
|------------|-------------------------------------|-------------------------------------------------------------|


### site edit command

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eese       | ee site edit                        | edit site configuration                                     |
|------------|-------------------------------------|-------------------------------------------------------------| 


### site list commands

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eesl       | ee site list                        | show list of sites present in server                        |
| eesle      | ee site list --enabled              | show list of sites present and enabled in server            |
| eesld      | ee site list --disabled             | show list of sites present and disabled in server           |
|------------|-------------------------------------|-------------------------------------------------------------| 


### site info command

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eesi       | ee site info                        | show information about site                                 |
|------------|-------------------------------------|-------------------------------------------------------------| 


### site show ngnix configuration

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eess       | ee site show                        | display nginx configuration of site                         |
|------------|-------------------------------------|-------------------------------------------------------------| 


### site update command

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eesup      | ee site update --password           | WordPress user password                                     |
| eesuw      | ee site update --wp                 | non WordPress sites to WordPress sites                      |
| eesuwsdir  | ee site update --wpsubdir           | WordPress site to multisite as subdirectory                 |
| eesuwsdom  | ee site update --wpsubdomain        | WordPress site to multisite as subdomain                    |
| eesuwf     | ee site update --wp --wpfc          | non WordPress site to WordPress + nginx fastcgi_cache       |
| eesuw3     | ee site update --wp --w3tc          | non WordPress site to WordPress + w3-total-cache plugin     |
| eesuws     | ee site update --wp --wpsc          | non WordPress site to WordPress + wp-super-cache plugin     |
| eesuwsdirf | ee site update --wpsubdir --wpfc    | WordPress site + wpmu-subdirectory + nginx fastcgi_cache    |
| eesuwsdir3 | ee site update --wpsubdir --w3tc    | WordPress site + wpmu-subdirectory + w3-total-cache plugin  |
| eesuwsdirs | ee site update --wpsubdir --wpsc    | WordPress site + wpmu-subdirectory + wp-super-cache plugin  |
| eesuwsdomf | ee site update --wpsubdomain --wpfc | WordPress site + wpmu-subdomain + nginx fastcgi_cache       |
| eesuwsdom3 | ee site update --wpsubdomain --w3tc | WordPress site + wpmu-subdomain + w3-total-cache plugin     |
| eesuwsdoms | ee site update --wpsubdomain --wpsc | WordPress site with wpmu-subdomain + wp-super-cache plugin  |
|------------|-------------------------------------|-------------------------------------------------------------| 


### site enable command

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eese       | ee site enable                      | adding symbolic link in sites-enabled to sites-available    |
|------------|-------------------------------------|-------------------------------------------------------------| 


## site disable command

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eesd       | ee site disable                     | removing symbolic link in sites-enabled to sites-available  |
|------------|-------------------------------------|-------------------------------------------------------------| 


## monitor site log

|------------|-------------------------------------|-------------------------------------------------------------|
| Alias      | Command                             | Description                                                 |
|------------|-------------------------------------|-------------------------------------------------------------|
| eesl       | ee site log                         | monitor site access and error logs                          |
|------------|-------------------------------------|-------------------------------------------------------------| 



The entire list of wp-cli commands can be found here: https://easyengine.io/docs/commands/
