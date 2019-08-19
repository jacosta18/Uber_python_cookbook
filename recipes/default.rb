#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update 'update_sources' do
  action :update
end

package 'python' do
  action :install
end

package 'python-pip' do
  action :install
end
# 
# package 'libncurses5-dev' do
#
# execute 'pip_install' do
#   command 'pip install --upgrade pip'
#   command 'pip  install -r ~/Engineering3637/InfrastructureAsCode/Uber_Project/App/requirements.txt'
# end
