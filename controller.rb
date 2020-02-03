require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )

require_relative( './models/transaction' )
require_relative( './models/tag')
require_relative( './models/merchant')
also_reload( './models/*' )

get '/home' do
  @transactions = Transaction.all
  erb(:index)
end

get '/add_transaction' do
  @transactions = Transaction.all
  erb(:"transactions/add_transaction")
end

get '/edit_transaction' do
  @transactions = Transaction.all
  erb(:"transactions/edit_transaction")
end

get '/add_merchant' do
  @merchants = Merchant.all
  erb(:"merchants/add_merchant")
end

get '/edit_merchant' do
  @merchants = Merchant.all
  erb(:"merchants/edit_merchant")
end

get '/add_tag' do
  @tags = Tag.all
  erb(:"tags/add_tag")
end

get '/edit_tag' do
  @tags = Tag.all
  erb(:"tags/edit_tag")
end
