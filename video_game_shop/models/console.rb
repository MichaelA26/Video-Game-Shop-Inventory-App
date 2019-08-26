require_relative('../db/sql_runner')

class Console

  attr_reader(:id, :name, :manufacturer)

  def initialize
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @manufacturer = options['manufacturer']
  end

  def save
    sql = "INSERT INTO console
    (name, manufacturer)
    VALUES($1, $2)
    RETURNING id"
    values =[@name, @manufacturer]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
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
