class UserController < ApplicationController

	# Routes

	# Register Routes
	post '/register' do
		user = User.new

		user.email = @payload[:email]

		user.password = @payload[:password]

		if ! User.exists?(email: user.email)
			user.save

			session[:logged_in] = true

			session[:user_id] = user.id

			{
				success: true,

				message: "Logged in with email #{user[:email]}."
			}.to_json
		else
			
			{
				success: false,

				message: 'Email already used.'
			}.to_json
		end
	end

	# Login Route

	post '/login' do
		email = @payload[:email]

		password = @payload[:password]

		user = User.find_by :email => email

		if user && user.authenticate(password)

			session[:logged_in] = true

			session[:user_id] = user.id

			{
				success: true,

				message: "Logged in with email #{user[:email]}."
			}.to_json
		else
			
			{
				success: false,

				message: 'Invalid Credentials.'
			}.to_json
		end
				
	end	
				



	


end	