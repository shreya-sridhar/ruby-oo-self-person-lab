class Person
    
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene 

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness_value)
        if happiness_value > 0 && happiness_value < 11
            @happiness = happiness_value
        elsif happiness_value < 0
            @happiness = 0
        else
            @happiness = 10
            "Out of Bounds" 
        end
    end

    def hygiene=(hygiene_value)
        if hygiene_value > 0 && hygiene_value < 11
            @hygiene = hygiene_value
        elsif hygiene_value < 0
            @hygiene = 0
        else
            @hygiene = 10
            "Out of Bounds" 
        end
    end

    def clean?
        @hygiene > 7
    
    end
    
    def happy?
        @happiness > 7
    
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        higher_hygiene = @hygiene
        self.hygiene=(higher_hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        #@happiness += 2
        #@hygiene -= 3
        self.hygiene=(@hygiene -3)
        self.happiness=(@happiness + 2)

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3 
        self.happiness=(@happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
            when "politics"
                self.happiness=(@happiness - 2)
                friend.happiness -= 2
                "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness=(@happiness + 1)
                friend.happiness += 1
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah" 
            end
        end   

end
