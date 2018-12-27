require 'pry'

def reformat_languages(languages)

new_languages_hash=Hash.new()


	languages.each do |style,hash|   

  		hash.each do |language,type|
  	    	#if !language.nil? && !style.nil?	
  			# another method to do it
  			#new_languages_hash.merge!({ language=> {:type=>type.values.first, :style=> [style]} })
  			#end
  			if new_languages_hash.key?(language)
         	 new_languages_hash[language][:style] << [style]
         	 new_languages_hash[language][:style].flatten!
       		else
         	new_languages_hash[language] = 
         	{
           :type => type[:type],
           :style => [style]
         	}   	 		
    		end
    	end 
    end
  #new_languages_hash[:javascript][:style].unshift(:oo)
 #puts 
 new_languages_hash
  
end
	
