require_relative('../db/sql_runner')

class Merchant
  attr_accessor :name, :location
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @location = options['location']
  end

  def self.delete_all
    sql = "DELETE FROM merchants"
    SqlRunner.run(sql)
  end

  def save()
      sql = "INSERT INTO merchants (name, location)
      VALUES($1, $2) RETURNING id"
      values = [@name, @location]
      @id = SqlRunner.run(sql, values)[0]['id'].to_i
    end

end
