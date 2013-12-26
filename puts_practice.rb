puts "Hello world!"

hash = {
    hash: :one,
    ditto: :two
}

puts hash

array = [[:hash, :one],[:ditto, :two]]

map_array = array.map { |x| puts " " + "#{x*2}" }
puts map_array

collect_array = array.collect! { |x| puts " " + "#{x*2}" }
puts collect_array 