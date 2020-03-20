module Types
  class QueryType < Types::BaseObject
    field :all_cryptos, [Types::CryptoType], null: false
    

    def all_cryptos
      Crypto.all
    end

  end
end
