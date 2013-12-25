require "open-uri"

# URLs
remote_base_url = "http://en.wikipedia.org/wiki/"
r1 = "Sigmund_Freud"
r2 = "Carl_Jung"

# File naming convention = 'my_copy_of-' plus remote_url_name plus '.html'
f1 = "my_copy_of-" + r1 + ".html"
f2 = "my_copy_of-" + r2 + ".html"

# read the first url
remote_full_url = remote_base_url + r1
#  		this opens and reads the webpage
rpage = open(remote_full_url).read

# write the first file to disk
# this opens a new writable file named after the naming convention.
file = open(f1, "w")
# 'write' uses the content from reading the webpage as its parameter and writes that into the new file
file.write(rpage)
# this closes the file
file.close

# read the second url
# defining which url to look for
remote_full_url = remote_base_url + r2
# this reads the webpage and stores the content in the variable 'rpage'
rpage = open(remote_full_url).read

# write the second file to disk
# this opens a new writable file named after the naming convention.
file = open(f2, "w")
# 'write' is passed the 
file.write(rpage)
file.close

# open a new file
compiled_file = open("psychoanalytic_divide.html", "w")

# reopen the first and second files
k1 = open(f1, "r")
k2 = open(f2, "r")

compiled_file.write(k1.read)
compiled_file.write(k2.read)

k1.close
k2.close
compiled_file.close