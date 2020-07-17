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

    def ingredients 
       BakeryIngredient.all.select do |ingredient|
        if ingredient.bakery == self 
       end 




        # should return an array of ingredients for the bakery's desserts
    end 

    def desserts 
        # should return an array of desserts the bakery makes
    end 

    def average_calories 
        # should return a number totaling the average number of calories for the desserts sold at this bakery
       
    end 

    def shopping_list 
        # should return a string of names for ingredients for the bakery

    end 
end 
    