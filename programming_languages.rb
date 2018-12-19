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
  i = {}
  languages.each do |object, lang|
    i.merge!(lang) {|key, v1, v2| v1}
    lang.each do |name, type|
      if i[name].has_key?(:style) == true
        i[name][:style] << object
      else
      i[name].merge!({style: [object]})
      end
    end
  end
  i
end


=begin
```ruby

i =
{
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
=end
