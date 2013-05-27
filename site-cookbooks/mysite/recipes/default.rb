
# call "web_app" from the apache recipe definition to set up a new website
web_app "mysite" do
	# where the website will live
   docroot "#{node.mysite.web_root}"

   # apache virtualhost definition
   template "mysite.conf.erb"
end

# create the webroot
directory "#{node.mysite.web_root}" do
	mode 0755
end

# copy in an index.html from mysite/files/default/index.html
 cookbook_file "#{node.mysite.web_root}/index.html" do
 	source "index.html"
 	mode 0755
 end

# copy in my usual favicon, just for the helluvit..
 cookbook_file "#{node.mysite.web_root}/favicon.ico" do
 	source "favicon.ico"
 	mode 0755
 end