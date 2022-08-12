# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name) 
        @name= name
        @bank_account= 25
        @happiness= 8
        @hygiene= 8
    end

    # def hygiene=(hygiene)
        # @hygiene = 
    #     if hygiene <= 10 && hygiene >=0
    #         hygiene
    #     elsif hygiene > 10
    #         10
    #     else hygiene < 0
    #         0
    #     end
    # end

    def hygiene=(num)
        @hygiene = 
            if num > 10
                10
            if num < 0
                0
            else
                num
            end
        end
    end

    def happiness=(num)
        @happiness = 
            if num > 10
                10
            elsif num < 0
                0
            else
                num
            end
        end
    end

    # def clean?
    #     if self.hygiene > 7
    #         true
    #     else 
    #         false
    #     end
    # end

    def clean?
        self.hygiene > 7
    end

    def happy? 
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        puts "all about the benjamins"
    end

    def take-bath 
        self.hygiene += 4
        # the above is equivalent to: self.hygiene = self.hygiene + 4
        puts "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        puts "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end

    # def start_conversation(friend, topic)
    #     case topic 
    #         when "politics"
    #             friend.happiness -= 2
    #             self.happiness -= 2
    #             puts "blah blah partisan blah lobbyist"
    #         when "weather"
    #             friend.happiness += 1
    #             self.happiness += 1
    #             puts "blah blah sun blah rain"
    #         else 
    #             puts "blah blah blah blah blah"
    #         end
    #     end
    # end

    def start_conversation(friend, topic)
        case topic
        when "politics" 
            [self, friend].each {|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each {|person| person.happiness += 1}
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end
