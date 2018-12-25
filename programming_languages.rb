require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |lang_type, language|
    language.each do |lang_name, lang_info|
      if new_hash[lang_name] == nil
        new_hash[lang_name] = lang_info
        lang_info[:style] = [lang_type]
      else
        new_hash[lang_name][:style] << lang_type
      end
    end
  end
  new_hash
end
