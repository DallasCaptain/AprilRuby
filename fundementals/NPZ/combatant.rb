class Combatant
    attr_accessor :choice, :name

    def initialize choice, name
        @choice = choice
        @name = name
    end


    def fight cb1

        if @choice == 'ninja'
            if cb1.choice == 'pirate'
                win cb1
            elsif cb1.choice =='zombie'
                lose cb1
            else
                tie cb1
            end
        end
        if @choice == 'pirate'
            if cb1.choice == 'ninja'
                lose cb1
            elsif cb1.choice =='zombie'
                win cb1
            else
                tie cb1
            end
        end
        if @choice == 'zombie'
            if cb1.choice == 'pirate'
                lose cb1
            elsif cb1.choice =='ninja'
                win cb1
            else
                tie cb1
            end
        end
    end

    private
    def tie cb1
        puts "#{@name} the #{@choice} ties #{cb1.name} the #{cb1.choice}"
    end

    def lose cb1
        puts "#{@name} the #{@choice} loses to #{cb1.name} the #{cb1.choice}"
    end

    def win cb1
        puts "#{@name} the #{@choice} beats #{cb1.name} the #{cb1.choice}"
    end
    
end

bob = Combatant.new('ninja', 'bob')
carl = Combatant.new('pirate', 'carl')
joe = Combatant.new('zombie', 'joe')

lst = [bob,carl,joe]

for cb in lst
    for cb2 in lst
        cb.fight(cb2)
    end
end

