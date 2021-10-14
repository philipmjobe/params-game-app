class ParamsController < ApplicationController
  def name 
    name = params["my-name"]
    if name.upcase.first = "A"
      render json: {message: "Hey #{name.upcase}, yout name starts with the first letter of the alphabet!"}
    else 
      render json: {message: "#{name.upcase}"}
    end
end
