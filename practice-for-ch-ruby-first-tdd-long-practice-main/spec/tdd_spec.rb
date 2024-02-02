require "tdd"
require 'rspec'


describe '#my_uniq' do
    it 'takes in an array without error' do
      expect { my_uniq([1, 2, 1, 3, 3]) }.to_not raise_error
    end

    it 'return a new array only contains unique elements, in the order in which they first appeared' do 
      expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])  # need to have no space 
    end

end

describe Array do
  describe 'Array#two_sum' do
    it 'finds all pairs of indices where the elements at those indices sum to zero' do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'pairs of indices need to be in order, with the smaller index before the bigger index' do 
      expect([-1, 0, 2, -2, 1].two_sum).to_not eq([[0, 4], [3, 2]])
    end

  end
end

