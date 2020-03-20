module Types
  class CalculatePriceType < Types::BaseObject
    field :calculate_price, Float, null: false do
      argument :types, String, required: false
      argument :exchange_rate, Float, required: false
      argument :margin, Float, required: false
    end



    def curr_price
      url = 'https://api.coindesk.com/v1/bpi/currentprice/USD.json'
      request = HTTParty.get(url)
      response = JSON.parse(request.body)['bpi']['USD']['rate_float']
    end
  
    def calculate_price(types:, exchange_rate:, margin:)
      if types == 'sell'
        number = curr_price.to_f - (curr_price.to_f * margin / 100)
        (number * exchange_rate).round(4)
        
  
      else
        if types == 'buy'
          number = curr_price.to_f + (curr_price.to_f * margin / 100)
          (number * exchange_rate).round(4)
        end
      end
    end
  
  end
end
