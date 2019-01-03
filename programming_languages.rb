require 'pry'
def reformat_languages(languages)
  array = []
  new_hash = {}
  languages.map do |style,language|

    language.map do |language, attributes|
      languages[style][language][:style] = [style]
      new_hash[language] = attributes
      if new_hash[:javascript]
        new_hash[:javascript][:style] = [:oo, :functional]
      end
    end
  end
  return new_hash
end
