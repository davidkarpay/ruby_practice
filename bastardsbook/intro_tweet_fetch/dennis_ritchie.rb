require "open-uri"

remote_base_url = "http://en.wikipedia.org/wiki"
remote_page_name = "Dennis_Ritchie"
remote_full_url = remote_base_url + "/" + remote_page_name

somedata = open(remote_full_url, "r").read

my_local_filename = "my_copy_of-" + remote_page_name + ".html"
my_local_file = open(my_local_filename, "w")

my_local_file.write(somedata)

my_local_file.close