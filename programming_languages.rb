def reformat_languages(languages)
  # your code here
  output = {}
  
  languages.each do |key, value|
    value.each do |k, v|
      output[k] = {
        :type => v,
        :style => [key]
      }
  puts output
end
