require 'sinatra'

get '/' do
	erb :index
end

post '/result' do
	params[:title] = 'Result'
	erb :result
end