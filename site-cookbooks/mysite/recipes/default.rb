include_recipe "mysite::webfiles"

# call "web_app" from the apache recipe definition to set up a new website
web_app "mysite" do
	# where the website will live
   docroot "#{node.mysite.web_root}"

   # apache virtualhost definition
   template "mysite.conf.erb"
end