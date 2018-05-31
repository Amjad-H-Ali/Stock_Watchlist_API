class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()



	# Connection to DB
	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'stock_watchlist_app'
	)



	# Routes

	get '/' do
		{
			success: true,
			message: 'Please consult the API documentation.'
		}.to_json
	end

	get '*' do 
		halt 404, {
			success: false,
			message: 404
		}.to_json
	end	

end	