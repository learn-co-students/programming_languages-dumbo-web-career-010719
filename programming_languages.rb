def reformat_languages(languages)
  new_hash = {}

  languages.each do |name, description|
    description.each do |language, type|
      if new_hash.has_key?(language)
        new_hash[language][:style] << name
      else
        new_hash[language] = type
        new_hash[language][:style] = [name]
      end
    end
  end
  new_hash
end
