require "pry"

class Dessert 
    attr_accessor :name, :bakery
    @@desserts=[]

    def initialize(name, bakery)
        @name = name 
        @bakery = bakery 
        Dessert.all << self 
    end 

    def self.all 
        @@desserts 
    end 

    def ingredients
    # should return an array of ingredients for the dessert
    end

    def bakery
  #should return the bakery object for the dessert
    end 

    def calories
    # should return a number totaling all the calories for all the ingredients included in that dessert
    end 


end 