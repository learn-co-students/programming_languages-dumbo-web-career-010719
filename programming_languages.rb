require 'pry'
def reformat_languages(languages)	# takes argument of `languages`, iterates over hash and builds new hash with languages as keys pointing to value of hash describing type/style
	new_hash = {}					# set a variable equal to an empty hash, adding new key/value pairs throughout iteration
	languages.each do |style, language|	# key: oo/functional, value: language

		language.each do |type, type_val|
			type_val.each do |attribute, value|
				if new_hash[type] == nil # check if new_hash[type] exists
					new_hash[type] = {} # if false will skip to next instruction otherwise creates new hash value for new_hash[type]
				end
				new_hash[type][:style] ||= [] # if [:sytle] doesn't exist set initialize empty array
				new_hash[type][:style] << style # shovel style variable to the :style value array
				if new_hash[type][attribute] == nil # check if new_hash[type][attribute] exists, if not
					new_hash[type][attribute] = value # set new_hash[type][attribute] = value
				end
			end
		end
	end
	new_hash		# return `new_hash`

end
