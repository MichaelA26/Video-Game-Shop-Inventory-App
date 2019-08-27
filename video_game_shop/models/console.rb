require_relative('../db/sql_runner')
require_relative('/game')

class Console

  attr_reader(:id, :name, :manufacturer)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @manufacturer = options['manufacturer']
  end

  def save
    sql = "INSERT INTO consoles
    (name, manufacturer)
    VALUES($1, $2)
    RETURNING id"
    values =[@name, @manufacturer]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def games_by_platform(platform)
    sql = "SELECT platform FROM games
    WHERE platform = $1"
    results = SqlRunner.run(sql)
    return results.map { |hash| Game.new(hash) }
  end

  def self.all()
    sql = "SELECT * FROM consoles"
    results = SqlRunner.run(sql)
    return results.map { |hash| Console.new(hash) }
  end

  def self.find( id )
    sql = "SELECT * FROM consoles
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Console.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM consoles"
    SqlRunner.run( sql )
  end

end
