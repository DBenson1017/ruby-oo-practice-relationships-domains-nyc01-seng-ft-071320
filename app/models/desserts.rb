require "pry"

class Dessert 
    attr_accessor :d_name, :belongs_to
    @@desserts=[]

    def initialize(d_name, belongs_to)
        @d_name = d_name 
        @belongs_to = belongs_to 
        Dessert.all << self 
    end 

    def self.all  
        @@desserts 
    end 

    #DONE - should return an array of ingredients for the dessert
    #using .map returned nil values at the end of the array (if an ingredient instance existed that is not used for this dessert?)
    #iterations that already return an [] do not require if...end, it will mess it up and prep a loop 
    def ingredients
        Ingredient.all.select do |ingredient_instance|
            ingredient_instance.makes == self
        end
    end

 
    def bakery #needs tested 
           #should return the bakery object for the dessert
        @@desserts.select do |dessert_instance|
            if dessert_instance.name == self.d_name 
                return self.belongs_to 
            end #closes if 
        end #closes .select iteration 
    end #closes bakery method 

  
    def calories #needs tested 
          #should return a num sum all the calories for all the ingredients included in that dessert
        #find ingredients that belong to dessert_i
        #add the :cal for each of those ingredients 
        @cal_count = []
        Ingredient.all.select do |ingredient_i|
            ingredient_i.dessert == self 
            ingredient_i.cal << @cal_count
                end 
            @cal_count.sum 
        
    end 

end 