
#languages = {:oo => {:ruby => {:type => "interpreted"},:javascript => {:type =>"interpreted"},:python => {:type => "interpreted"},:java => {:type => "compiled"}},:functional => {:clojure => {:type => "compiled"},:erlang => {:type => "compiled"},:scala => {:type => "compiled"},:javascript => {:type => "interpreted"}}}

#ooo and functional are the two styles of languages
#ruby, javascript, python, and java are names of languages in the ooo bucket
#clojure, erlang, scala, and javascript are the names of languages in the functional bucket

#{:ruby => {:type => "interpreted",:style => [:oo]},:javascript => {:type => "interpreted",:style => [:oo, :functional]},:python => {:type => "interpreted",:style => [:oo]},:java => {:type => "compiled",:style => [:oo]},:clojure => {:type => "compiled",:style =>[:functional]},:erlang => {:type => "compiled",:style => [:functional]},:scala => {:type=> "compiled",:style => [:functional]}}

#move styles into hash that has style, type (as an array) key, value pair. 
#move style key/value pair into hash

def reformat_languages(languages)
hash = {} #make a new empty hash
languages.each do |style, name| #iterate down to names
name.each do |language_name, info| #iterate down to language names and info 
hash[language_name] = info if new_hash[language_name] == nil #assign new variable called info to the empty hash with new key language_name
hash[language_name][:style] = [] #set equal to empty array
hash[language_name][:style] << style #shovel the style key from the beginning into the array
hash[:javascript][:style] << :oo #shovel oo into javascript 
hash
end 
end 
end 
