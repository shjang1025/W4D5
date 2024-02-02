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

describe "#my_transpose" do
  let(:rows) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
  let(:transposed) {[[0, 3, 6], [1, 4, 7], [2, 5, 8]]}
  # before(:each) do 
  #   rows = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
  #   transposed = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
  # end

  it "takes in 2-dimensional array with the same number of rows and columns" do
    same_length= rows.all?{|ele| ele.length == rows.length}

    expect { my_transpose(rows) }.to_not raise_error
    expect(same_length).to eq(true)

  end

  it "return in an array with the rows and columns transposed" do 
    expect(my_transpose(rows)).to eq(transposed)
  end


end
