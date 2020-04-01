# require modules here
require 'yaml'
require 'pry'

def load_library(library)
  library_hash = YAML.load_file('lib/emoticons.yml')
  new_hash = {}
  library_hash.each do |key, value|
    new_hash[key] = {
      :english => value[0],
      :japanese => value[1]
    }
  end
  new_hash
  #binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(library, emoticon)
  library_hash = load_library(library)
  if library_hash.include?(emoticon)
    puts library_hash.key
  binding.pry 

end