class Pet
    @@no_pets = 0
    attr_accessor :name, :age, :color, :no_pets
    def initialize name, age, color
        @name = name
        @age = age
        @color = color
        @@no_pets +=1
        puts @@no_pets
        self
    end

    def bday newage, newcolor
        @age = newage
        @color = newcolor
        self
    end

    def talk
        puts "#{@name} says woof"
        self
    end
end



