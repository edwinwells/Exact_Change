require 'sinatra'
require_relative 'exact_change.rb'

get '/' do
    erb :User_Input_Amount
end

post '/exact_change(changevalue)' do
	number = params[:changevalue]
	result = exact_change(number)
	"OK, for #{number}, you will need #{result}!  Get to countin'!!"
end