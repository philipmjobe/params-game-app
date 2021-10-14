class ParamsController < ApplicationController
  def name 
    name = params["my_name"]
    if name == "a"
      render json: {message: "Hey #{name.upcase}, yout name starts with the first letter of the alphabet!"}
    else 
      render json: {message: "#{name.upcase}"}
    end
  end
end
