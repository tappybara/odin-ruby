def stock_picker(prices)
    buy = 0
    sell = 1
    max_profit = 0
    best = []

    while sell < prices.length
        if prices[buy] < prices[sell]
            profit = prices[sell] - prices[buy]

            if profit > max_profit
                max_profit = profit
                best = [buy, sell]
            end
        else
            buy = sell
        end

        sell += 1
    end

    best
end


array = [17, 3, 6, 9, 15, 8, 5, 1, 10]

p stock_picker(array)