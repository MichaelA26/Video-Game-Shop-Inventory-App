require_relative( "../models/console.rb" )
require_relative( "../models/game.rb" )
require("pry")

Game.delete_all()
Console.delete_all()

console1 = Console.new({
  "name" => "Xbox One",
  "manufacturer" => "Microsoft"
})

console1.save()

console2 = Console.new({
  "name" => "PS4",
  "manufacturer" => "Sony"
})

console2.save()

console3 = Console.new({
  "name" => "Switch",
  "manufacturer" => "Nintendo"
})

console3.save()

binding.pry
nil
