# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene


    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def happiness=(happiness)

        if happiness > 10
            @happiness = 10
        elsif happiness <= 10 && happiness > 0
            @happiness = happiness
        else 
            @happiness = 0
        end

    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene <= 10 && hygiene > 0
            @hygiene = hygiene
        else
            @hygiene = 0
        end
    end
  
    def happy?
        (happiness > 7) ? true : false
    end

    def clean?
        (hygiene > 7) ? true : false
    end

    def get_paid(amount)
        @bank_account = bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene -3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness = friend.happiness + 3
        self.happiness = @happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness = person.happiness - 2
            self.happiness = @happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness = person.happiness + 1
            self.happiness = @happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
            

    end

end
