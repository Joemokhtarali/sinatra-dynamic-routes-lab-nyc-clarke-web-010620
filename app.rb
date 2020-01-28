require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
      @name = params[:name]
      @reversed = @name.split("").reverse.join("")
      "#{@reversed}"
  end 

  get '/square/:number'do 
    @num = params[:number].to_i
    @result = @num * @num 
    "#{@result}"
  end 

  get '/say/:number/:phrase' do 
    @array = [] 
    @phrase = params[:phrase] 
    @num = params[:number].to_i 
    @result = @num.times { @array<< @phrase}
    @ss = @array.join(" ")
    "#{@ss}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1] 
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    case 
      when @operation == "add"
        @result = @num1 + @num2
        "#{@result}"
      when @operation == "subtract"
        @result = @num1 - @num2
        "#{@result}"
      when @operation == "multiply"
        @result = @num1 * @num2
        "#{@result}"
      when @operation == "divide"
        @result = @num1 / @num2
        "#{@result}"
    end 
  end 
  
end