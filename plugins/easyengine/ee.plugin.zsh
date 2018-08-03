# easyengine ( Just a step to make WordPress better )
# A command line interface to make WordPress more easy
# https://easyengine.io/

## add etc host entry for a site
function create_etc_host_entry(){
    echo -e "127.0.0.1\t$1" | sudo tee -a /etc/hosts > /dev/null
}
alias etc='create_etc_host_entry $1'

## site create commands ##
alias eescw='sudo ee site create $1 --wp && create_etc_host_entry $1'
alias eescwp7='eescw --php7 && create_etc_host_entry $1' # WordPress site running with php7
alias eesch='sudo ee site create $1 --html && create_etc_host_entry $1'
alias eescp='sudo ee site create $1 --php && create_etc_host_entry $1'
alias eescp7='sudo ee site create $1 --php7 && create_etc_host_entry $1' # create simple php7 site
alias eescm='sudo ee site create $1 --mysql && create_etc_host_entry $1' # create simple site and database
alias eescl='sudo ee site create $1 --letsencrypt && create_etc_host_entry $1'
alias eescwh='eescw --hhvm && create_etc_host_entry $1' # WordPress site running on hhvm

alias eescw3='sudo ee site create $1 --w3tc && create_etc_host_entry $1' # install wordpress with w3-total-cache plugin
alias eescws='sudo ee site create $1 --wpsc && create_etc_host_entry $1' # install wordpress with whisp-super-cache plugin
alias eescwf='sudo ee site create $1 --wpfc && create_etc_host_entry $1' # install wordpress + nginx fastcgi_cache
alias eescwr='sudo ee site create $1 --wpredis && create_etc_host_entry $1' # install wordpress + nginx redis_cache

alias eescwsdi='sudo ee site create $1 --wpsubdir && create_etc_host_entry $1' # install wpmu-subdirectory without any page caching
alias eescwsdir3='sudo ee site create $1 --wpsubdir --w3tc && create_etc_host_entry $1' # install wpmu-subdirectory with w3-total-cache plugin
alias eescwsdirs='sudo ee site create $1 --wpsubdir --wpsc && create_etc_host_entry $1' # install wpmu-subdirectory with wp-super-cache plugin
alias eescwsdirf='sudo ee site create $1 --wpsubdir --wpfc && create_etc_host_entry $1' # install wpmu-subdirectory + nginx fastcgi_cache
alias eescwsdirr='sudo ee site create $1 --wpsubdir --wpredis && create_etc_host_entry $1' # install wpmu-subdirectory + nginx redis_cache

alias eescwsdom='sudo ee site create $1 --wpsubdom && create_etc_host_entry $1' # install wpmu-subdomain without any page caching
alias eescwsdom3='sudo ee site create $1 --wpsubdom --w3tc && create_etc_host_entry $1' # install wpmu-subdomain with w3-total-cache plugin
alias eescwsdoms='sudo ee site create $1 --wpsubdom --wpsc && create_etc_host_entry $1' # install wpmu-subdomain with wp-super-cache plugin
alias eescwsdomf='sudo ee site create $1 --wpsubdom --wpfc && create_etc_host_entry $1' # install wpmu-subdomain + nginx fastcgi_cache
alias eescwsdomr='sudo ee site create $1 --wpsubdom --wpredis && create_etc_host_entry $1' # install wpmu-subdomain + nginx redis_cache

## site delete commands ##
alias eesd='sudo ee site delete $1' # delete whole site.

alias eesdn='sudo ee site delete $1 --no-prompt' # delete whole site without prompting.
alias eesdf='sudo ee site delete $1 --files' # delete site files only.
alias eesdd='sudo ee site delete $1 --db' # delete site database only.

alias eesdfn='sudo ee site delete $1 --files --no-prompt' # delete site files without prompting.
alias eesddn='sudo ee site delete $1 --db --no-prompt' # delete site database without prompting.

## site edit command ##
alias eese='sudo ee site edit $1' # edit site configuration

## site list commands ##
alias eesl='sudo ee site list'  # show list of sites present in server
alias eesle='sudo ee site list --enabled' # Show list of sites present and enabled in server
alias eesld='sudo ee site list --disabled' # Show list of sites present and disabled in server

## site info command ##
alias eesi='sudo ee site info $1' # show information about site

## site ngnix show configuration ##
alias eess='sudo ee site show $1' # nginx configuration for the website can be viewed

## site update command ##
alias eesup='sudo ee site update $1 --password' # update WordPress user password
alias eesuw='sudo ee site update $1 --wp' # update non WordPress sites to WordPress sites
alias eesuwsdi='sudo ee site update $1 --wpsubdir' # update WordPress single site to WordPress multisite as subdirectory
alias eesuwsdom='sudo ee site update $1 --wpsubdomain' # update WordPress single site to WordPress multisite as subdomain

### update cache type for WordPress sites ###
alias eesuwf='sudo ee site update $1 --wp --wpfc'
alias eesuw3='sudo ee site update $1 --wp --w3tc'
alias eesuws='sudo ee site update $1 --wp --wpsc'

### update WordPress single site to WordPress multisite with caching as subdirectory ###
alias eesuwsdif='sudo ee site update $1 --wpsubdir --wpfc' # update WordPress site with wpmu-subdirectory + nginx fastcgi_cache
alias eesuwsdi3='sudo ee site update $1 --wpsubdir --w3tc' # update WordPress site with wpmu-subdirectory + w3-total-cache plugin
alias eesuwsdis='sudo ee site update $1 --wpsubdir --wpsc' # update WordPress site with wpmu-subdirectory + wp-super-cache plugin

### update WordPress single site to WordPress multisite with caching as subdomain ###
alias eesuwsdomf='sudo ee site update $1 --wpsubdomain --wpfc' # update WordPress site with wpmu-subdomain + nginx fastcgi_cache 
alias eesuwsdom3='sudo ee site update $1 --wpsubdomain --w3tc' # update WordPress site with wpmu-subdomain + w3-total-cache plugin
alias eesuwsdoms='sudo ee site update $1 --wpsubdomain --wpsc' # update WordPress site with wpmu-subdomain + wp-super-cache plugin

## site enable command ##
alias eese='sudo ee site enable $1' # adding symbolic link in sites-enabled to sites-available

## site disable command ##
alias eesd='sudo ee site disable $1' # removing symbolic link in sites-enabled to sites-available

## monitor site log ##
alias eesl='sudo ee site log $1'
