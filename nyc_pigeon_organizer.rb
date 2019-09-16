def get_names(data)

search = data.reduce([]) { |memo, old_hash|
	name_array = old_hash[1].values

		memo << name_array
		memo = memo.flatten.uniq

	memo
	}

return search
end

# p get_names(pigeon_data)

def get_categories(data)

search = data.reduce([]) { |memo, old_hash|
	trait_array = old_hash[0]

		memo << trait_array

	memo
	}

return search
end

# p get_catergories(pigeon_data)

def get_traits(data)

search = data.reduce([]) { |x, y|

	names = get_names(data)

	compare = names.reduce([]) { |x2, y2|

		arr1 = []

			y[1].values.select { |e|
				if e.include?(y2)
					arr1 << y[1].key(e).to_s
				end
			}

		x2 << arr1
		x2
		}

x << compare
x
}

return search
end

# p get_names(pigeon_data)
# p get_categories(pigeon_data)
# p get_traits(pigeon_data)

def nyc_pigeon_organizer(data)

names = get_names(data)
cats = get_categories(data)
traits = get_traits(data)

color = cats[0]
gender = cats[1]
lives = cats[2]

color_type = traits[0]
gender_type = traits[1]
homes = traits[2]

# p names
# puts
# p color
# p color_type
# puts
# p gender
# p gender_type
# puts
# p lives
# p homes
# puts
# puts "~~~~~~~~~~~"
# puts

h1 = {}

names.each_with_index { |e, i|
 h1[e] = {color => color_type[i], gender => gender_type[i], lives => homes[i]}

#  p color_type[i]
}


return h1
end