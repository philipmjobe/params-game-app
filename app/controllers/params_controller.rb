class ParamsController < ApplicationController
  def name 
    input_name = params["query_name"]
    output_message = input_name.upcase
    if output_message[0] == "A"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else 
      render json: {message: output_message}
    end
  end

  def game 
    num1 = params[:variable1].to_i
    num2 = params[:variable2].to_i
    sum = num1 + num2
    render json: {message: sum}
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

  def query_params
    input_value = params["my_message"]
    second_input = params["second_message"]
    render json: { message: "The messages are #{input_value} and #{second_input}"}
  end

  def segment_params
    input_value = params["this_is_a_variable"]
    input_value2 = params["hot_dog"]
    render json: {message: "The url segments are #{input_value} and #{input_value2}"}
  end

  def body_params
    input_value = params["secret_info"]
    render json: {message: "The secret info is #{input_value}"}
  end 
end
