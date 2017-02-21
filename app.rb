require 'sinatra'
require_relative 'exact_change.rb'

get '/' do
    erb :User_Input_Amount
end

post '/exact_change(changevalue)' do
	number = params[:changevalue]
	result=number
print " Here you go: #{result}!"
end