#
# Cookbook:: .
# Recipe:: tomconfig
#
# Copyright:: 2018, The Authors, All Rights Reserved.


cookbook_file '/etc/init/tomcat.conf' do
  source 'tomcat.conf'
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  action :create
end
