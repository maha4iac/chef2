#
# Cookbook:: .
# Recipe:: myapache
#
# Copyright:: 2018, The Authors, All Rights Reserved.
myapachepak='apache2'

package myapachepak do
  action :install
end

service myapachepak do
  action :start
end

