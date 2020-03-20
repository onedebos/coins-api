class RemoveTypesFromCryptos < ActiveRecord::Migration[6.0]
  def change

    remove_column :cryptos, :types, :string

    remove_column :cryptos, :margin, :string

    remove_column :cryptos, :exchangeRate, :string
  end
end
