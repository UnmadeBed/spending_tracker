require( 'pg')

class Transaction

  attr_accessor :name, :cost

  def initialize( options )
    @id = options['id']
    @cost = options['cost'].to_i
    @name = options['name']
  end



#save a new transaction to the tracker.
def save()
  db = PG.connect({ dbname: 'spending_tracker', host:'localhost'})
  sql =
  "INSERT INTO transactions
    (cost,
    name)
  VALUES
  (#{@cost},
    '#{@name}')"
    db.exec(sql)
    db.close()
end

end
