require 'yaml'


def load_library(file_path)
  hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meanings, array|
  hash[:get_meaning]["#{array[1]}"] = "#{meanings}" #populates the empty hash that get_meaning points to with a key which is the japanese emoticon to the meaning
  hash[:get_emoticon]["#{array[0]}"] = "#{array[1]}" # populates the empty hash that ger_emoticon with a key which is the english emoticon that points to the japanese emoticon
end
  
  
  
  
  
  hash 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end