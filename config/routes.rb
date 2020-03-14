# frozen_string_literal: true

Rails.application.routes.draw do
  post 'calculate', to: 'cryptos#calculate'
end
