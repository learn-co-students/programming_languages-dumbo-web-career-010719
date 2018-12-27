def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang|
    lang.each do |lang_name, lang_info|
      new_hash[lang_name] ||= lang_info
      new_hash[lang_name][:style] = []
      new_hash[lang_name][:style] << style
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
