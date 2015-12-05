include_recipe 'selinux::permissive'
include_recipe 'apt'
include_recipe 'curl'
include_recipe 'git'
include_recipe 'nodejs'

group node[:server][:group]

user node[:server][:user] do
  group node[:server][:group]
  system true
  shell '/bin/bash'
end
