require 'yaml'


def load_library(file_path)
  hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meanings, array|
  hash[:get_meaning]["#{array[1]}"] = "#{meanings}"
  hash[:get_emoticon]["#{array[0]}"] = "#{array[1]}"
end
  hash 
end

def get_japanese_emoticon(file_path, emoticon)
load_library(file_path)
end

def get_english_meaning
  # code goes here
end