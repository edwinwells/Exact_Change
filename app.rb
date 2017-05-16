require 'sinatra'
require_relative 'exact_change.rb'
enable :sessions

get '/' do
    erb :User_Input_Amount
end
 
post '/exact_change' do
	number = params[:changevalue]
	session[:result] = exact_change(number)
	# "OK, for #{number}, you will need #{result}!  Get to countin'!!"
	erb :showinfo, :locals => {:number => number, 
		                       :result => session[:result]}
end