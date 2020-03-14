# frozen_string_literal: true

class AddMarginToCryptos < ActiveRecord::Migration[6.0]
  def change
    add_column :cryptos, :margin, :float
  end
end
