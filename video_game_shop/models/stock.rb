require_relative('../db/sql_runner')

class Stock

  attr_reader(:id, :console_id, :game_id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @console_id = options['console_id'].to_i
    @game_id = options['game_id'].to_i
  end

  def save()
    sql = "INSERT INTO stocks(console_id, game_id)
    VALUES($1, $2)
    RETURNING id"
    values = [@console_id, @game_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM stocks"
    results = SqlRunner.run( sql )
    return results.map { |stock| Stock.new(stock) }
  end

  def console()
    sql = "SELECT * FROM consoles
    WHERE id = $1"
    values = [@console_id]
    results = SqlRunner.run(sql, values)
    return Console.new(results.first)
  end

  def game()
    sql = "SELECT * FROM games
    WHERE id = $1"
    values = [@game_id]
    results = SqlRunner.run(sql, values)
    return Game.new(results.first)
  end

  def self.delete_all()
    sql = "DELETE FROM stocks"
    SqlRunner.run(sql)
  end

  def self.destroy(id)
    sql = "DELETE FROM stocks
    WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

end
