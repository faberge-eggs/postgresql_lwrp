node.default["postgresql"]["default"]["version"] = '9.1'
include_recipe "pgtest::master"
include_recipe "pgtest::create_user"
include_recipe "pgtest::create_database"
include_recipe "pgtest::slave"
include_recipe "pgtest::slave_init_nostart"
