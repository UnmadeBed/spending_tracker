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
