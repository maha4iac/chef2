

mywebserpak =node['myfirstck']['mywebserverpakname']
package mywebserpak do
  action :install
end
service mywebserpak do
  action :start
end



# for each loop
node['myfirstck']['installgrouppak'].each do |myloopforgroup|
package myloopforgroup do
  action :install
end
end
