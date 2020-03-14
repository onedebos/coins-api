# frozen_string_literal: true

class AddPriceToCryptos < ActiveRecord::Migration[6.0]
  def change
    add_column :cryptos, :price, :float, default: 0.00
  end
end
