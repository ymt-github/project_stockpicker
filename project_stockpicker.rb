def stock_picker(prices)
    buy_price = 0
    sell_price = 0
    profit = 0
  
    prices.each_with_index do |price, index|
      prices.each_with_index do |price_sub, index_sub|
        if price - price_sub > profit && index > index_sub
          profit = price - price_sub
          sell_price = price
          buy_price = price_sub
        end
      end
    end
    
    [prices.index(buy_price), prices.index(sell_price)]
  
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])