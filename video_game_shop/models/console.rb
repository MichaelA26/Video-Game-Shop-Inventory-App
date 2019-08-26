require_relative('../db/sql_runner')

class Console

  attr_reader(:id, :name, :manufacturer)

  def initialize
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @manufacturer = options['manufacturer']
  end

end
