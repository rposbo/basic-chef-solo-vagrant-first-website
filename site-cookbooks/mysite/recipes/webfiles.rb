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

 # use a template to create a phpinfo page (just creating the file and passing in one variable)
template "#{node.mysite.web_root}/phpinfo.php" do
	source "testpage.php.erb"
	mode 0755
	variables ({
		:title => node.mysite.name
	})
end