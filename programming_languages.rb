
#languages = {:oo => {:ruby => {:type => "interpreted"},:javascript => {:type =>"interpreted"},:python => {:type => "interpreted"},:java => {:type => "compiled"}},:functional => {:clojure => {:type => "compiled"},:erlang => {:type => "compiled"},:scala => {:type => "compiled"},:javascript => {:type => "interpreted"}}}

#ooo and functional are the two styles of languages
#ruby, javascript, python, and java are names of languages in the ooo bucket
#clojure, erlang, scala, and javascript are the names of languages in the functional bucket

#{:ruby => {:type => "interpreted",:style => [:oo]},:javascript => {:type => "interpreted",:style => [:oo, :functional]},:python => {:type => "interpreted",:style => [:oo]},:java => {:type => "compiled",:style => [:oo]},:clojure => {:type => "compiled",:style =>[:functional]},:erlang => {:type => "compiled",:style => [:functional]},:scala => {:type=> "compiled",:style => [:functional]}}

#move styles into hash that has style, type (as an array) key, value pair. 
#move style key/value pair into hash

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_list|
   language_list.each do |language_name, type_info|
     new_hash[language_name] = type_info if new_hash[language_name] == nil 
     new_hash[language_name][:style] = []
     new_hash[language_name][:style] << style
end
end 
new_hash[:javascript][:style] << :oo
new_hash
end
