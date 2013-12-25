remote_base_url = "http://en.wikipedia.org/"
(1..3).each do |some_year|
	r_url = remote_base_url + some_year.to_s
	puts r_url
	 
end