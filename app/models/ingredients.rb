require "pry"

class Ingredient 
    attr_accessor :name, :makes, :cal 
    @@ingredients = []
    @@total = 0 

    def initialize(name, makes, calory)
        @name = name 
        @makes = makes 
        @cal = calory
        @@ingredients << self 
        @@total += 1
    end 

    def self.total 
        @@total 
    end 


    def self.all 
        @@ingredients
    end 
 0
    #DONE - should return a dessert object for that ingredient
    #the returned dessert instance also contains the bakery that it belings to, inheritance? 
    #I learned you don't need self.makes, and can instead just return @makes, since Ingredient has a default getr/setr method via attr_accessor
    def dessert
        @makes 
    end 

    #DONE - should return the bakery object for the bakery that uses that ingredient
    #path will be Ingredient to the owning dessert (makes), then the dessert to the owning bakery (belongs_to) 
    def bakery
        self.makes.belongs_to 
        end 

    #should take a string argument return an array of all ingredients that
    #include that string in their name
    #find_all_by_name('chocolate') might return ['chocolate sprinkles',
    #       'chocolate mousse', 'chocolate']
    # - make sure you aren't just looking for exact matches (like 'chocolate' ==
    #       'chocolate')
    def self.find_all_by_name(ingredient)
        @found = []
        self.all.each do |ingredient_instance|
            if ingredient_instance.name[].include?(ingredient) 
                @found << ingredient_instance.name  
            end
        end  
    end 

end 