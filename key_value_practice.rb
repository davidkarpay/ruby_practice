karpay_family = {
	dad:"Ken",
	mom:"Jeannette",
	twin:"Robert",
	brother:"Caleb",
	i:"David"
}

karpay_family_names = karpay_family.each_value { |v| puts v }
puts karpay_family_names

karpay_family_roles = karpay_family.each_key { |k| puts k }
puts karpay_family_roles

