require "pry"

class BakeryIngredient 
    attr_accessor :bakery, :ingredient
    @@ba_interactions = []

    def initialize(bakery, ingredient)
        @bakery = bakery 
        @ingredient = ingredient 
        BakeryIngredient.all << self 
    end 

    def self.all
        @@ba_interactions 
    end 




end 

