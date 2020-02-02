require_relative('../db/sql_runner')
require_relative('./merchant')
require_relative('./tag')

class Transaction

  attr_accessor :amount, :merchant_id, :tag_id
  attr_reader :id

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @amount = options['amount']
    @merchant_id = options['merchant_id']
    @tag_id = options['tag_id']
  end

  def self.delete_all
    sql = "DELETE FROM transactions"
    SqlRunner.run(sql)
  end

  #save a new transaction to the tracker.
  def save()
    sql = "INSERT INTO transactions (amount, merchant_id, tag_id)
    VALUES ($1, $2, $3)
    RETURNING id"
    values = [@amount, @merchant_id, @tag_id]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  #   def Transaction.all()
  #     db = PG.connect({ dbname: 'spending_tracker', host:'localhost'})
  #     sql = "SELECT * FROM transactions"
  #     db.prepare("all", sql)
  #     purchases = db.exec_prepared("all")
  #     db.close()
  #     return purchases.map {|purchase| Transaction.new(purchase)}
  #   end
  #
  end
