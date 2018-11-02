require 'date'

class Account
    attr_accessor :pin_code, :balance, :account_status, :owner

    STANDARD_VALIDITY_YRS = 5
    
    def initialize(attrs = {})
        @pin_code = produce_pin_code
        @account_status = :active
        @balance = 0

        set_owner(attrs[:owner])
    end

    def exp_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    private

    def produce_pin_code
        rand(1000..9999)
    end

    def self.deactivate(account)
        account.account_status = :deactivated
    end

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise 'An Account owner is required'
    end
end