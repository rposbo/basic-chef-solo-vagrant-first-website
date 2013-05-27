Vagrant::Config.run do |config|
  # use the previously added ubuntu box
  config.vm.box = "precise32"

  # fwd host port 8080 to vm port 80
  config.vm.forward_port 80, 8080

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      "apache" => {
          "default_site_enabled" => false
        },
        "mysite" => {
          "web_root" => "/var/www/mysite"
        }
      }

    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    chef.add_recipe "apache2"
    chef.add_recipe "mysite"
  end
end
