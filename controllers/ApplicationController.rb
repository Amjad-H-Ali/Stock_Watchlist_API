class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()

	get '/' do
		'Server is Listening...'
	end

end	