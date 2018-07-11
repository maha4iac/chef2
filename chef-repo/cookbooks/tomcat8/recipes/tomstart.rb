#
# Cookbook:: .
# Recipe:: tomstart
#
# Copyright:: 2018, The Authors, All Rights Reserved.


execute 'my tom reload' do
  command 'initctl reload-configuration'
  action :run
end

#  But we (devops engg) should  take care  of IDEMPOTENTS 
execute 'my tom start' do
  command 'initctl start tomcat'
  action :run
  not_if { File.exist?('/home/ubuntu/start.txt') }
end

file '/home/ubuntu/start.txt' do
  content 'started'
  mode '0755'
  action :create
end



