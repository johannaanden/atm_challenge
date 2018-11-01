require './lib/account.rb'
require 'pry'
require 'date'

describe Account do
    let(:owner) { instance_double('Account', pin_code: '1234', exp_date: '04/19', account_status: :active) }
end