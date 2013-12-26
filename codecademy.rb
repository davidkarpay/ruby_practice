x=13195; n=2; max=n

for n in (2..x)
	if (x%n==0) 
	   prime=true
	   for y in (1..n)
	        if n%y==0
	            prime=false
	        end
	        y+=1
	    end   
	    if prime
	        max=n
	    end
	end
	n+=1
end

puts "#{max}"