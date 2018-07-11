#
# Cookbook:: .
# Recipe:: tomuser
#
# Copyright:: 2018, The Authors, All Rights Reserved.


template '/opt/tomcat/conf/tomcat-users.xml' do
  source 'tomcatuser.erb'
  owner 'tomcat'
  mode '0755'
  action :create
end

execute 'my tom restart' do
  command 'initctl restart tomcat'
  action :run
end

