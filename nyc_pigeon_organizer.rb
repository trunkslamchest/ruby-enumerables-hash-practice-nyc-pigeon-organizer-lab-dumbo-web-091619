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

search = data.reduce([]) { |memo, old_hash|

	traits_names = old_hash[1]
	names = get_names(data)

	compare = names.reduce([]) { |compared_memo, name|
		organized_traits = []

		traits_names.values.select { |trait_groups|
			trait_types = traits_names.key(trait_groups).to_s
				if trait_groups.include?(name)
					organized_traits << trait_types
				end
			}
		compared_memo << organized_traits
		compared_memo
		}

memo << compare
memo
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

final_hash = {}

	names.each_with_index { |name, index|
		final_hash[name] = {color => color_type[index], gender => gender_type[index], lives => homes[index]}
	}

return final_hash
end