# FINVESTOR API
#### By Amjad Ali

API devoloped for the [FINVESTOR Stock Watchlist React App](https://github.com/Amjad-H-Ali/Stock_Watchlist_React)

## Technologies Used
	
* Ruby, Sinatra, PostgreSQL, ActiveRecord, Sessions.

## REACT APP

See corresponding REACT app info at https://github.com/Amjad-H-Ali/Stock_Watchlist_React

## Route Info

### UserController

* #### URL:

	 _/user/register_

* #### METHOD: 
	
	_`POST`_

* #### DETAILS:	

    - Takes in a new username and password.
    - Checks to make sure that username deosn't exist in the DB.
    - If it doesn't already exist, a new user will be created in the DB.
    - The Property "logged_in" in the Session object will set to true, and the user will be ‘logged in’.

* #### RESPONSE:

	###### SUCCESS

	`{
				success: true,
				message: "Logged in as john@example.com."}`

	###### Fail

	`{
		success: false,
		message: "Email already taken."
	}`
  
  
  

* #### URL:

	 _/user/login_

* #### METHOD: 
	
	_`POST`_	

* ### DETAILS:	 	

    - Takes in a username and password.
    - Checks if given username and password match in the DB.
    - If the information is correct, a Session will be created and the user will be ‘logged in’.

* #### RESPONSE:

	###### SUCCESS:

	`{
				success: true,
        message: "Logged in as email john@example.com."
		}`

	###### Fail

	`{
		success: false,
		message: "Invalid Credentials."
	}`
  
  
* #### URL:

	 _/user/logout_

* #### METHOD:
	
	_`POST`_

* ### DETAILS:

	- Destroys the session, effectively ‘logging the user out’	

* #### RESPONSE:
	
	`{
		success: true,
		message:"Logged out."
	}`
  
  
### StockController


* #### URL:

	* _/stock_


* #### METHOD: 
	
	_`GET`_

* #### DETAILS:	

    - Queries the DB for all the Stock Symbols associated with logged in user.

* #### RESPONSE:

	###### SUCCESS

	`{
			success: true,
			message: "Found 3 stock(s) for john@example.com.",
			stocks: ["TMUS", "AAPL", "T"]
	}`
  
  
* #### URL:

	* _/stock/:ticker_

* #### METHOD: 
	
	_`POST`_

* #### DETAILS:	

    - Creates a new Stock in DB with "Ticker" property.

* #### RESPONSE:

	###### SUCCESS

	`{
			success: true,
			message: "Added new stock MSFT to watchlist.",
			added_stock: ["MSFT"]
		}`
    
    
* #### URL:

	* _/stock/:ticker_

* #### METHOD: 
	
	_`DELETE`_

* #### DETAILS:	

    - Queries the DB for a stock with the given ticker symbol that belongs to logged in user.
    - Deletes stock from DB.

* #### RESPONSE:

	###### SUCCESS

	`{
			success: true,
			message: "Deleted TMUS from watchlist."
	}`    
