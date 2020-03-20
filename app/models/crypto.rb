# frozen_string_literal: true

class Crypto < ApplicationRecord
  def curr_price
    url = 'https://api.coindesk.com/v1/bpi/currentprice/USD.json'
    request = HTTParty.get(url)
    response = JSON.parse(request.body)['bpi']['USD']['rate_float']
  end

  def calculate_price
    if types == 'sell'
      number = curr_price.to_f - (curr_price.to_f * margin / 100)
      number * exchangeRate
      

    else
      if types == 'buy'
        number = curr_price.to_f + (curr_price.to_f * margin / 100)
        number * exchangeRate
      end
    end
  end


end
