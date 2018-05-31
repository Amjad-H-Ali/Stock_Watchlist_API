# Sinatra and ActiveRecord
require 'sinatra/base'

require 'sinatra/activerecord'

# Models
require './models/StockModel'

require './models/UserModel'

# Controllers
require './controllers/ApplicationController'
require './controllers/StockController'

require './controllers/UserController'

# Routes 
map('/') {
	run ApplicationController
}

# map('/user') {
# 	run UserController
# }

# map('/stock') {
# 	run StockController
# }