require_relative('../db/sql_runner')

class Game

  attr_reader(:id, :title, :platform, :selling_price, :buying_cost, :developer, :stock)

  def initialize
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @platform = options['platform']
    @selling_price = options['selling_price'].to_i
    @buying_cost = options['buying_cost'].to_i
    @developer = options['developer']
    @stock = options['stock'].to_i
  end

end
