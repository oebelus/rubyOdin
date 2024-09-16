def stock_picker(arr)
    min_index = 0
    max_profit = 0
    best_pair = [0, 0]

    arr.each_with_index do |price, i|
        if price < arr[min_index]
            min_index = i
        end

        profit = price - arr[min_index]

        if profit > max_profit && i > min_index
            max_profit = profit
            best_pair = [min_index, i]
        end
    end

    best_pair
end

puts stock_picker([17,3,6,9,15,8,6,1,10])