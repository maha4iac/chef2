#
# Cookbook:: .
# Recipe:: permisions
#
# Copyright:: 2018, The Authors, All Rights Reserved.


execute 'my chgrp' do
  command 'chgrp -R tomcat /opt/tomcat/conf'
  action :run
end

execute 'my chmod  on config ' do
  command 'chmod g+rwx /opt/tomcat/conf'
  action :run
end

execute 'my chmode in config' do
  command 'chmod g+r /opt/tomcat/conf/*'
  action :run
end

execute 'my chmode on work' do
  command 'chown -R tomcat /opt/tomcat/work/'
  action :run
end

execute 'my chmode on temp' do
  command 'chown -R tomcat /opt/tomcat/temp/'
  action :run
end

execute 'my chmode on logs' do
  command 'chown -R tomcat /opt/tomcat/logs/'
  action :run
end