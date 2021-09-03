require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    multiplier = params[:number].to_i
    repeat = params[:phrase] * multiplier
    "#{repeat}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if params[:operation] == "add"
      @output = @number_1 + @number_2
    elsif params[:operation] == "subtract"
      @output = @number_1 - @number_2
    elsif params[:operation] == "divide"
      @output = @number_1/@number_2
    elsif params[:operation] == "multiply"
      @output = @number_1*@number_2
    end
    
    "#{@output}"
  end

end