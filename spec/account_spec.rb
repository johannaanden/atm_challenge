require './lib/account.rb'
require 'pry'
require 'date'

describe Account do
    let(:owner) { instance_double('Account', pin_code: '1234', exp_date: '04/19', account_status: :active) }

    it 'check length of a number' do
        number = 1234
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime('%m/%y')
        expect(subject.exp_date).to eq expected_date
    end
end