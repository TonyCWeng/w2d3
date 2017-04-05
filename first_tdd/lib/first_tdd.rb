class Array
  def my_uniq
    uniques = []
    each do |el|
      uniques << el unless uniques.include?(el)
    end
    uniques
  end

  def two_sum
    zeroes = []
    length.times do |idx|
      length.times do |idx2|
        zeroes << [idx, idx2] if self[idx] + self[idx2] == 0 && idx < idx2
      end
    end
    zeroes
  end
end

def my_transpose(arr)
  transposed = []
  arr.length.times do |row|
    transposed[row] = []
    arr.length.times do |col|
      transposed[row] << arr[col][row]
    end
  end
  transposed
end

def stock_picker(prices)
  profit = 0
  days = nil
  prices.length.times do |p_date|
    prices.length.times do |s_date|
      sale = prices[s_date] - prices[p_date]
      if sale > profit && p_date < s_date
        profit = sale
        days = [p_date, s_date]
      end
    end
  end
  days
end
