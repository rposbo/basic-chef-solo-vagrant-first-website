# -- Setup the website
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