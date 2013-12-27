def separate_comma_values(text)
txt_len = text.length
  if txt_len == 0
      return [""]
  end
  addrCount = 1
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

def extract_local_domain(text)
end

def is_valid_local(text)
end

def is_valid_domain(text)
end

def run(input_val)
	result = []
	local = ""
	emails = separate_comma_values(input_val)
	for i in 0...emails.length
		local, domain = extract_local_domain(emails[i])
		if is_valid_local(local) and domain != '' and is_valid_domain(domain)
			result.push([local, domain])
		end
	end
	return result
end