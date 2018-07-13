name "webserverRole"
description "my web server Chef role"
run_list "recipe[java]", "recipe[webserverwithDB::webserver]"