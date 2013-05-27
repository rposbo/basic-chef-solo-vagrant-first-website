Vagrant::Config.run do |config|
  # use the previously added ubuntu box
  config.vm.box = "precise32"

  # fwd host port 8080 to vm port 80
  config.vm.forward_port 80, 8080

  # fix the us.archive.ubuntu.com 404 issues
  # http://stackoverflow.com/questions/8306034/how-to-install-postgresql-in-vagrant-box
  # Also fixes some general install errors related to "include_recipe" dependencies
  config.vm.provision :shell, :inline => "apt-get clean; apt-get update" 

  config.vm.provision :chef_solo do |chef|
    chef.json = {
        "mysite" => {
          "name" => "rposbo-chef-vagrant-blog-backup - now with php!",
          "web_root" => "/var/www/mysite"
        }
      }

    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    chef.add_recipe "mysite"
  end
end
