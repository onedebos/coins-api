# frozen_string_literal: true

class RemovePriceFromCryptos < ActiveRecord::Migration[6.0]
  def change
    remove_column :cryptos, :price, :float
  end
end
