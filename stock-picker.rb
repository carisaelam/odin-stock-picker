def stock_picker(stock_prices)
  buy_on = 0
  sell_on = 0
  maximum_profit = 0

  stock_prices.each_with_index do |buy_price, buy_date| 
    stock_prices.each_with_index do |sell_price, sell_date|
      if sell_date > buy_date # must buy first 
        if sell_price - buy_price > maximum_profit # only update if profit is higher than before
          maximum_profit = sell_price - buy_price
          buy_on = buy_date
          sell_on = sell_date
        end
      end
    end
  end 

  p "Buy on day #{buy_on}. Sell on day #{sell_on}. Your profit is: #{maximum_profit}"

end

# Use cases 

stock_picker([17,3,6,9,15,8,6,1,10])
# => "Buy on day 1. Sell on day 4. Your profit is: 12"

stock_picker([100, 300, 240, 1])
# => "Buy on day 0. Sell on day 1. Your profit is: 200"

stock_picker([1000, 1, 2, 3, 4, 5])
# => "Buy on day 1. Sell on day 5. Your profit is: 4"