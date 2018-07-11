#
# Cookbook:: .
# Recipe:: usergroup
#
# Copyright:: 2018, The Authors, All Rights Reserved.


user 'tomcat' do
  comment 'comment'
  home '/opt/tomcat'
  shell '/bin/false'
  action :create
end

group 'tomcat' do
  members 'tomcat'
  action :create
end


