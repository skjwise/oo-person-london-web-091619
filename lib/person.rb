# your code goes here
require "pry"
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene =  8
    end

    def happiness=(new_happiness)
        if new_happiness < 0
            new_happiness = 0
        elsif new_happiness > 10
            new_happiness = 10
        end

        @happiness = new_happiness
    end

    def hygiene=(new_hygiene)
        if new_hygiene < 0
            new_hygiene = 0
        elsif new_hygiene > 10
            new_hygiene = 10
        end

        @hygiene = new_hygiene
    end
    
    def happy?
        if self.happiness > 7 
            return true 
        else
            return false
        end
    end

    def clean?
        if self.hygiene > 7
            return true 
            else
                return false
            end
        end

        def get_paid(salary)
            self.bank_account += salary
            return "all about the benjamins"
        end

        def take_bath
            self.hygiene += 4
            return "♪ Rub-a-dub just relaxing in the tub ♫"
        end
        
        def work_out
            self.hygiene -= 3
            self.happiness += 2
            return "♪ another one bites the dust ♫"
        end

        def call_friend(friend)
            friend.happiness += 3
            self.happiness += 3
            return "Hi #{friend.name}! It's #{self.name}. How are you?"
        end

        def start_conversation(person, topic)
            object = [self, person]
           if topic == 'politics'
            object.each { |x| x.happiness -= 2 }
            return "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                object.each { |x| x.happiness += 1 }
                return "blah blah sun blah rain"
            else
                return "blah blah blah blah blah"
           end
        end
    end