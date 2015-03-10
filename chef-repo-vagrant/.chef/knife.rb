# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vagrant"
client_key               "#{current_dir}/vagrant.pem"
validation_client_name   "vagrant-validator"
validation_key           "#{current_dir}/vagrant-validator.pem"
chef_server_url          "http://localhost:8889"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["/cookbooks"]
