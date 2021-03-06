class Account 
    attr_accessor :balance  
    attr_accessor :balance, :pin
    @@AGENT_NUMBERS = [111111, 222222, 333333, 44444] 
    def initialize
        @balance = 0 
        @pin = 1234
    end
    def self.agent_numbers
        @@AGENT_NUMBERS 
    end

    def check_balance 
        "Your current balance is #{@balance}"
    end

    def deposit (amount)
        @balance += amount       
        "Confirmed you deposited #{amount}, your new balance #{balance}
        at #{current_time()}"
    end 
    def current_time 
        @deposit_time  = Time.now.strftime('%d %b %Y %H:%M:%S')

    end
    def withdraw(agent_number, amount, pin)
        return 'invalid agent number try again' unless @@AGENT_NUMBERS.include?(agent_number)
        return 'invalid pin number try again' unless @pin == pin
        if amount > @balance
            "Insufficient balance,you cannot withdraw #{amount},your current balance is #{@balance}"
        else
            @balance -=amount

            "Confirmed you withdrew #{amount}, your new balance #{balance} at #{current_time()}"
        end
    end
    def send(receiver, amount, pin)
            return 'invalid pin number try again' unless @pin == pin        
            return 'receiver phone number is invalid' unless receiver.to_s.length == 10 and receiver.is_a?(Integer)
            if amount > @balance
                "Insufficient balance,you cannot send #{amount},your current balance is #{@balance}"
            else
            @balance -=amount
            "Success you sent #{amount} to #{receiver} you current balance is #{@balance} at #{current_time}"
            end
    end
     def change_pin (pin,newpin)
                pin=@pin
                if newpin != pin
                end
                if newpin.length ==4
                end
                if newpin.integer?
                    "successfully changed pin"
                else
                    "pin must be numbers only and of and 4 digits"
                end
    end

end
    







































































