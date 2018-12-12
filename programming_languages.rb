def reformat_languages(languages)
  
  new_hash = languages.values
  style_array = []

  new_hash.each_with_index do |hash, idx|
    hash.keys.each do |lang|
      hash[lang][:style] = [languages.keys[idx]]
    end
  end
  
  new_hash.combination(2).each_with_index do |ele, idx|
    (ele[0].keys & ele[1].keys).each do |item|
      style_array << new_hash[0][item][:style]
      style_array << new_hash[1][item][:style]
      new_hash[1][item][:style] = style_array.flatten
      break
    end
  end

  return new_hash[0].merge(new_hash[1])
end

# method above rewrote the below method to handle more than two keys

  # new_hash[0].keys.each do |lang| 
  #   new_hash[0][lang][:style] = [languages.keys[0]]
  # end
  # new_hash[1].keys.each do |lang| 
  #   new_hash[1][lang][:style] = [languages.keys[1]]
  # end

  # (new_hash[0].keys & new_hash[1].keys).each do |item|
  #   style_array << new_hash[0][item][:style]
  #   style_array << new_hash[1][item][:style]
  #   new_hash[1][item][:style] = style_array.flatten
  # end

# solution from official solution below
  # def reformat_languages(languages)
  #   new_languages = {}
  #   languages.each do |type, hash|
  #     hash.each do |name, attributes|
  #       new_languages[name] ||= attributes
  #       new_languages[name][:style] ||= []
  #       new_languages[name][:style] << type
  #     end
  #   end
  #   new_languages
  # end
