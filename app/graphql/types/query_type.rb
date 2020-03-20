module Types
  class QueryType < Types::BaseObject
    field :coin, [Types::CalculatePriceType], null: false
    def coin
      CalculatePrice.all
    end
  end
end
