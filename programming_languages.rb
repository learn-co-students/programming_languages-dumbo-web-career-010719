def reformat_languages(languages)
  new_hash = languages.values
  new_hash[0].keys.each do |lang| 
    new_hash[0][lang][:style] = [languages.keys[0]]
  end
  new_hash[1].keys.each do |lang| 
    new_hash[1][lang][:style] = [languages.keys[1]]
  end
  
  style_array = []
  (new_hash[0].keys & new_hash[1].keys).each do |item|
    style_array << new_hash[0][item][:style]
    style_array << new_hash[1][item][:style]
    new_hash[1][item][:style] = style_array.flatten
  end

  return new_hash[0].merge(new_hash[1])


end
