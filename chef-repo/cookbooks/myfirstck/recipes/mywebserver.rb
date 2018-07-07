

if node['platform']  == 'ubuntu'
  mywebserpak='apache2'
end

if node['platform']  == 'redhat'
    mywebserpak='httpd'
end



package mywebserpak do
  action :install
end



service mywebserpak do
  action :start
end

