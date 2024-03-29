require_relative('../db/sql_runner')
require ('pry')

class Game

  attr_reader(:id, :title, :platform, :selling_price, :buying_cost, :developer, :stock)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @platform = options['platform']
    @selling_price = options['selling_price'].to_i
    @buying_cost = options['buying_cost'].to_i
    @developer = options['developer']
    @stock = options['stock'].to_i
  end

  def save
    sql = "INSERT INTO games
    (title, platform, selling_price, buying_cost, developer, stock)
    VALUES($1, $2, $3, $4, $5, $6)
    RETURNING id"
    values =[@title, @platform, @selling_price, @buying_cost, @developer, @stock]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE games
    SET(title, platform, selling_price, buying_cost, stock) =
    ($1, $2, $3, $4, $5)
    WHERE id = $6"
    values = [@title, @platform, @selling_price, @buying_cost, @stock, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM games"
    results = SqlRunner.run(sql)
    return results.map { |hash| Game.new(hash) }
  end

  def self.find( id )
    sql = "SELECT * FROM games
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    # binding.pry
    return Game.new( results.first )
  end

  def delete()
    sql = "DELETE FROM games
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = "DELETE FROM games"
    SqlRunner.run( sql )
  end

end
