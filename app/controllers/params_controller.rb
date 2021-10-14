class ParamsController < ApplicationController
  def name 
    name = params["my_name"]
    if name == "A"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else 
      render json: {message: "#{name.upcase}"}
    end

    def sum
      num1 = params["num1"].to_i
      num2 = params["num2"].to_i
      sum = num1 + num2
      render json: {message: "The total is #{sum}"}
  end
end
