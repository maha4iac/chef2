#
# Cookbook:: webserverwithDB
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'java'
include_recipe 'webserverwithDB::webserver'
include_recipe 'webserverwithDB::mysqldb'