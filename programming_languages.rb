require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each {|styleName, langsObj|
    langsObj.each {|lang, itsDescripObj|
      keysofHash = new_hash.keys
      if (keysofHash.include?(lang))
        new_hash[lang][:style].push(styleName)
      else
        new_hash[lang] = itsDescripObj
        new_hash[lang][:style] = []
        new_hash[lang][:style].push(styleName)
      end
    }

  }
  puts new_hash
  new_hash
end
