def stock_picker(prices)
  lowest_price = 0
  highest_price = 0
  i = 0
  for i in i...prices.length do
    j = i + 1
    for j in j...prices.length do
      if prices[j] - prices[i] > prices[highest_price] - prices[lowest_price]
        highest_price = j
        lowest_price = i
      end 
      j += 1 
    end
    i += 1  
  end

  puts [lowest_price, highest_price]
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([20, 16, 12, 5, 9, 8, 10, 16, 22, 4, 6, 2])
stock_picker([1, 2, 3, 6, 4, 3, 7, 9, 2, 10])