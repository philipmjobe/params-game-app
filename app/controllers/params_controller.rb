class ParamsController < ApplicationController
  def 
    name = params["my_name"]
    if name == "A"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else 
      render json: {message: "#{name.upcase}"}
    end
  end

  def sum
    num1 = params["num1"].to_i
    num2 = params["num2"].to_i
    sum = num1 + num2
    render json: {message: "The total is #{sum}"}
  end

  def guess_query
    winning_number = 32
    input_guess = params["the_users_guess"].to_i
    if input_guess > winning_number
      output_message = "Guess lower!"
    elsif input_guess < winning_number
      output_message = "Guess higer!"
    else  
      output_message = "Good job!"
    end
    render json: {message: output_message}
  end 
end
