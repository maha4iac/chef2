name "mysqldbRole"
description "my mysql db  Chef role"
run_list "recipe[java]", "recipe[webserverwithDB::mysqldb]"