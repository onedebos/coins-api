class CreateCalculatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :calculate_prices do |t|
      t.float :calculate_price

      t.timestamps
    end
  end
end
