require "rspec"
require "first_tdd"

describe 'Array#my_uniq' do

  it 'returns an array without duplicates' do
    expect([1,1,2,3]).to eq([1,1,2,3])
    expect([1,1,2,3].my_uniq).to eq([1,2,3])
  end

end

describe 'Array#two_sum' do
  it 'returns an array of indices that sum to zero' do
    expect([1,-1,6,2,-2,0,7].two_sum).to eq([[0,1],[3,4]])
  end
end

describe '#my_transpose' do
  it 'returns a transposed array' do
    a = [[1,2,3],[4,5,6],[7,8,9]]
    expect(my_transpose(a)).to eq([[1,4,7], [2,5,8], [3,6,9]])
  end
end

describe '#stock_picker' do
  it 'returns the most profitable pair of days' do
    stock_values = [12,14,6,7,10,11]
    expect(stock_picker(stock_values)).to eq([2,5])
  end

  it 'returns nil if there is no profit to be made' do
    values = [10,9,8,7,6,5]
    expect(stock_picker(values)).to eq(nil)
  end

end
