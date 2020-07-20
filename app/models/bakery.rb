require "pry"


class Bakery 
    attr_accessor :name, :location 
    @@bakeries = []

    def initialize(name, location)
        @name = name 
        @location = location 
        Bakery.all << self 
    end 

    def self.all
        @@bakeries 
    end 

    # should return an array of ingredients for the bakery's desserts
    def ingredients 
       Ingredient.all.select do |i|
         if i.bakery == self 
         end 
        end 
    end 

    # DONE - should return an array of desserts the bakery makes
    def desserts 
      
        Dessert.all.select do |dessert_instance|
            dessert_instance.belongs_to == self 
        end 
    end 

    # should return a number totaling the average number of calories for the desserts sold at this bakery
    #path desserts.all to get desserts array, iterate looking for belongs_to == self, 
    def average_calories
       
    end 

    # should return a string of names for ingredients for the bakery
    def shopping_list

    end 
end 
    