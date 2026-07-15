require 'pry-byebug'

# def stock_picker(stock_prices)
#   profit = 0
#   best_days = []

#   stock_prices.each_with_index do |buy_price, buy_day|
#     stock_prices.drop(buy_day + 1).each.with_index(buy_day + 1) do |sell_price, sell_day|
#       current_profit = sell_price - buy_price
#       if profit < current_profit
#         profit = current_profit
#         best_days.clear.push(buy_day, sell_day)
#       end
#     end
#   end
#   best_days
# end

def stock_picker(stock_prices) 
  max_profit = 0
  min_price_day = 0
  best_days = [0, 0]

  stock_prices.each_with_index do |buy_price, buy_day|
    if buy_price < stock_prices[min_price_day]
      min_price_day = buy_day
    else
      profit = buy_price - stock_prices[min_price_day]

      if profit > max_profit
        max_profit = profit
        best_days = [min_price_day, buy_day]
      end
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])