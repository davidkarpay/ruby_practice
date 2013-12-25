require "open-uri"
remote_base_url = "http://en.wikipedia.org/wiki/"

start_year = 1988
end_year = 2014
compiled_file = open("#{start_year}-#{end_year}.html", "w")

(start_year..end_year).each do |yr|
	page_to_read = open("#{remote_base_url}#{yr}")
	contents_of_read_page = page_to_read.read 

	compiled_file.write(contents_of_read_page)

#	local_file_name = "copy-of-#{yr}.html"
#	local_file = open(local_file_name, "w")
#	local_file.write(contents_of_read_page)
#	local_file.close

	puts "Wrote to #{compiled_file}."
end
compiled_file.close

# Wrote to #<File:0x007fa4baa13bd0>.
