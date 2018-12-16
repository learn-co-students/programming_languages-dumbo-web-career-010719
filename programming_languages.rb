def reformat_languages(languages)
  # your code here
  output = {}
  
  languages.each do |key, value|
    value.each do |k, v|
      if output.key?(k)
        output[k][:style] << [key]
        output[k][:style].flatten!
      else
        output[k] = {
          :type => v[:type],
          :style => [key]
        }
      end
    end
  end

  output
end
