text = "dlkarpay@gmail.com,davidluciankarpay@gmail.com";

def separateCommaValues(text)
	txt_len = text.length
	if txt_len == 0
		return text.to_a
	end
	addCount = 1
	addr = [""]
	for i in 0...txt_len
		ch = text[i].chr
		if ch == ","
			if addr[addrCount-1].length > 0
				addrCount += 1
				addr.push("")
			end
		else
			addr[(addrCount-1)] += ch
		end
	end
	return addr
end

=begin 
txt_len = how long the text is
if the length is 0, then just return the text inside of an array.
start the for loop counter:
	for each item between 0 and however long the text is,
		ch = the character of whatever index of the string the counter
				 is on.
		if the character is a ",",
				and if 		