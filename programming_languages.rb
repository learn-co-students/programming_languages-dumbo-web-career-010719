def reformat_languages(languages)
  new_hash={}
  languages.each do |top_level, data|
    data.each do |second_level, value|
   # puts " #{second_level} = #{value.first.first} => #{value.first[1]}" 
      new_hash[second_level]={value.first.first => value.first[1], 
                              "style".to_sym => [top_level]}
    end
  end
  new_hash.each do |key, data|
    if key == "javascript".to_sym
      new_hash[key][:style].unshift("oo".to_sym)
    end
  end
end
