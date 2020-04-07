require_relative 'pet'

class Parrot < Pet
    def initialize (name,age,color,says)
        super(name,age,color)
        @says = says
    end

    def talk
        super()
        puts @says
    end
end