class DropTableCalculatePrice < ActiveRecord::Migration[6.0]
  def change
    drop_table :calculate_prices
  end
end
