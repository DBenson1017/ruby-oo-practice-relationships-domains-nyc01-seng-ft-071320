require "pry"

class Ingredient 
    attr_accessor :name, :makes, :cal 
    @@ingredients = []

    def initialize(name, makes, calory)
        @name = name 
        @cal = calory
        @makes = makes 
        Ingredient.all << self 
    end 

    def self.all 
        @@ingredients
    end 

    def dessert
  #should return a dessert object for that ingredient
    end 

    def bakery
  #should return the bakery object for the bakery that uses that ingredient
    end 

#    .find_all_by_name(ingredient)
#   - should take a string argument return an array of all ingredients that
#     include that string in their name

# .find_all_by_name('chocolate') might return ['chocolate sprinkles',
#       'chocolate mousse', 'chocolate']

# - make sure you aren't just looking for exact matches (like 'chocolate' ==
#       'chocolate')

end 