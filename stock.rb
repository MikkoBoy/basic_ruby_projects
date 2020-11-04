def stock_picker(array)
  #
  # puts array.index(array.min)
  # puts array.max(3)
  old_profit = 0
  optimal_days = []
  array.each_with_index do |buy_price, buy_day|
    array.each_with_index do |sell_price, sell_day|
      new_profit = sell_price - buy_price

      if (new_profit > old_profit) && (sell_day > buy_day)
        old_profit = new_profit
        puts new_profit
        optimal_days = [buy_day, sell_day]
      end
    end
  end
  optimal_days
end

p stock_picker([17,2,6,9,1,8,6,1,10])