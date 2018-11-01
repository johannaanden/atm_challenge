class Account
    attr_accessor :pin_code, :balance, :account_status, :exp_date, :owner

    STANDARD_VALIDITY_YRS = 5
    
    def initialize
        @pin_code = produce_pin_code
        @exp_date = set_expire_date
    end

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end
    
    def produce_pin_code
        rand(1000..9999)
    end
end