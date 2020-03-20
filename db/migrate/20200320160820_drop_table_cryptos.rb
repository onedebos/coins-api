class DropTableCryptos < ActiveRecord::Migration[6.0]
  def change
    drop_table :cryptos
    drop_table :calculate_prices
  end
end
