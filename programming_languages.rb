def reformat_languages(languages)
  # your code here
  new_languages = {}
  languages.each do |style, language|
    language.each do |name, attributes|
    new_languages[name] ||= attributes
    new_languages[name][:style] = []
    new_languages[name][:style] << style
    end
  end
  
  new_languages[:javascript][:style] << :oo
  new_languages
end
