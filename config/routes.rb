Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/name" => "params#name"
  get "/sum_game/:num1/:num2" => "params#sum"
end
