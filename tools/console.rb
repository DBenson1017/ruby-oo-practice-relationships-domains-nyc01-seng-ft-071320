require_relative '../config/environment.rb'
require_relative '../app/models/bakery'
require_relative '../app/models/desserts'
require_relative '../app/models/ingredients'
require_relative '../app/models/bakery_ingredient'
# require 'pry'

def reload
  load 'config/environment.rb'
end
b1 = Bakery.new("b1", 'Brooklyn')
b2 = Bakery.new("b2", 'Queens')
b3 = Bakery.new("b3", 'Bronx')
b4 = Bakery.new("b4", 'Manhattan')

cookie = Dessert.new("cookie", b1)
bread = Dessert.new("bread", b3)
cake = Dessert.new("cake", b1)
sweet = Dessert.new("sweet", b2)

sugar = Ingredient.new('sugar', cookie, 100)
butter = Ingredient.new('butter', cookie, 50)
flour = Ingredient.new('flour', bread, 100)
chocolate = Ingredient.new('chocolate', sweet, 100)
choc_sprik = Ingredient.new('chocolate sprinkles', sweet, 100)
choc_m = Ingredient.new('chocolate mousse', sweet, 100)

Pry.start












