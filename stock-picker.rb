# Method #stock_picker takes in an array of stock prices, one for each hypothetical day.
# It return a pair of days representing the best day to buy and the best day to sell. 
# Days start at 0 (zero-based indexing).

def stock_picker(stocks)
    highest_diff = 0
    buy_day = nil
    sell_day = nil
    stocks.each_with_index do |buy_value, buy_index|
        stocks.drop(buy_index + 1).each_with_index do |sell_value, sell_index| #loop on the rest of the elements/days
            current_diff = sell_value - buy_value
            #Change buy and sell days based on possible gain
            if current_diff >= highest_diff then
                highest_diff = current_diff  
                buy_day = buy_index
                sell_day = sell_index + buy_index + 1 #add 'buy_index' and 1 to get original index
            end
        end
    end
    #Make sure there's possible gain from given days/array
    if buy_day == nil || sell_day == nil then
        puts "There's no profit in these days!"
    else
        [buy_day, sell_day]
    end
end