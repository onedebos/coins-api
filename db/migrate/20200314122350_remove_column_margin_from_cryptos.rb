# frozen_string_literal: true

class RemoveColumnMarginFromCryptos < ActiveRecord::Migration[6.0]
  def change
    remove_column :cryptos, :margin, :bigint
  end
end
