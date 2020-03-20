class RemovePricesFromCryptos < ActiveRecord::Migration[6.0]
  def change

    remove_column :cryptos, :price, :string
  end
end
