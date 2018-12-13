def reformat_languages(languages)
    # your code here
    new_hash = {}

    languages.each do |structure, name|
        name.each do |lang, type|
            if new_hash.has_key?(lang)
                new_hash[lang][:style] << structure
            else
                new_hash[lang] = type
                new_hash[lang][:style] = [structure]
            end
        end
    end
   new_hash
end
