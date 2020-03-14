# frozen_string_literal: true

class CryptosController < ApplicationController
  def index
    @crypto = Crypto.all.order(created_at: :desc)
  end

  # accept type, margin and exchangerate
  def calculate
    crypto = Crypto.create(crypto_params)
    crypto.price = crypto.calculate_price
    render json: {
      crypto: crypto,
      calculated_price: crypto.calculate_price

    }
  end

  private

  def crypto_params
    params.permit(:margin, :types, :exchangeRate, :price)
  end
end
