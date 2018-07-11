#
# Cookbook:: .
# Recipe:: download
#
# Copyright:: 2018, The Authors, All Rights Reserved.


remote_file '/home/ubuntu/apache-tomcat-8.0.51.tar.gz' do
  source 'https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.51/bin/apache-tomcat-8.0.51.tar.gz'
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  action :create
end


directory '/opt/tomcat' do
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  action :create
end


#  But we (devops engg) should  take  care of IDEMPOTENTS 
execute 'my tar extraction' do
  command 'tar xvf /home/ubuntu/apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1'
  action :run
  not_if { File.exist?('/opt/tomcat/NOTICE') }
end




