

if node['platform']  == 'ubuntu'
  mywebserpakname='apache2'
end

if node['platform']  == 'redhat'
    mywebserpakname='httpd'
end



package mywebserpakname do
  action :install
end



service mywebserpakname do
  action :start
end

