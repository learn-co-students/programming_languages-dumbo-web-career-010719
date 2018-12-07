require "pry"
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}




def reformat_languages(languages)
  # your code here
  newHash = {}
#  languages[:oo].map {|k, v| v[:style] = [:oo]}
#  languages[:functional].map {|k, v| v[:style] = [:functional]}
#  newHash.merge!(languages[:oo])
#  newHash.merge!(languages[:functional])

  newHash.merge!(languages[:oo])
  newHash.merge!(languages[:functional])

  newHash.map { |k,v| v[:style] = [] }

  newHash.each do |k,v|
    if languages[:oo].include?(k) && languages[:functional].include?(k)
      newHash[k][:style] = [:oo, :functional]
    elsif languages[:oo].include?(k)
      newHash[k][:style] << :oo
    elsif languages[:functional].include?(k)
      newHash[k][:style] << :functional
    end
  end
  newHash
end
