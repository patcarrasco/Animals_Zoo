require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
kitty = Animal.new("cat", 100, "mittens")
bigger_cat = Animal.new("cat", 124, "bingo")
lion = Animal.new("lion", 414, "socks")
elephant = Animal.new("elephant", 314, "peanut")


zoo1 = Zoo.new("Bronx Zoo", "NY")
zoo2 = Zoo.new("San Diego Zoo","CA")

kitty.zoo = zoo1
bigger_cat.zoo = zoo1
lion.zoo = zoo1
elephant.zoo = zoo1

binding.pry
puts "done"
