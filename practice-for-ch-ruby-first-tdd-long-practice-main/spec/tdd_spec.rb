require "tdd"
require 'rspec'


describe '#my_uniq' do
    it 'takes in an array without error' do
      expect { my_uniq([1, 2, 1, 3, 3]) }.to_not raise_error
    end

    it 'return a new array only contains unique elements' do 

    end

end


# takes in an array without error
# return in an array only contains unique elements
# elements should appear in order as the original array

