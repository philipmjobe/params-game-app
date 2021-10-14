Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/query_params" => "params#query_params"
  get "/name" => "params#name"
  get "/guess_query" => "params_examples#guess_query"
  get "/segment_params/:this_is_a_variable/:hot_dog" => "params_examples#segment_params"
  get "/game/:variable1/:variable2" => "params_examples#game"
  get "/guess_query/:the_users_guess" => "params_example#guess_query"

end
