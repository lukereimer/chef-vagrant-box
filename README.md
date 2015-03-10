# CHEF-Vagrant box

The purpose of this repo is create a VM that you can easily test cookbooks with Chef-zero, etc.

## using chef-zero example

```
# start the chef-zero server as a daemon in local memory
chef-zero -d

# use the chef-repo-vagrant to manage the chef server
cd /vagrant/chef-repo-vagrant
knife role from file starter.rb # this will create the 'starter' role on the chef server
knife cookbook upload java #upload whatever cookbooks you want to use to the 

# bootstrap the VM as a client of the in-memory server
knife bootstrap localhost --sudo -x vagrant --P vagrant --node-name 'local'
# add the 'starter' role to the node
knife node run_list add local 'role[starter]'
# run the chef-client to configure the node
sudo chef-client
```
