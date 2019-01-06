def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    data.each do |lang_name, describe|
    if new_hash[lang_name] == nil
      new_hash[lang_name] = describe
      new_hash[lang_name][:style] = []
    end
    new_hash[lang_name][:style] << style
  end
end
new_hash
end
