def stock_picker(data)
  return nil if data.empty?

  min_price = data[0]
  min_day = 0
  max_profit = 0
  best_days = nil

  data.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
    elsif price - min_price > max_profit
      max_profit = price - min_price
      best_days = [min_day, day]
    end
  end
  best_days
end
