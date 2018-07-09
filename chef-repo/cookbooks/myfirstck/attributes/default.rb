

if node['platform'] == 'redhat'
default['myfirstck']['mywebserverpakname'] = 'httpd'
end

if node['platform'] == 'ubuntu'
default['myfirstck']['mywebserverpakname'] = 'apache2'
end



# i want to create a my cust attribute

default['myfirstck']['installgrouppak'] =['git','tree','wget']