class ParamsController < ApplicationController
  def name 
    name = params["my_name"]
    if name == "A"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else 
      render json: {message: "#{name.upcase}"}
    end
  end
end
