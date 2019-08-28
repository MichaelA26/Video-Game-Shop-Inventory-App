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

      game1 = Game.new({
        "title" => "The Last Of Us: Remastered",
        "platform" => "PS4",
        "selling_price" => 30,
        "buying_cost" => 15,
        "developer" => "Naughty Dog",
        "stock" => 10
        })

        game1.save()

        game2 = Game.new({
          "title" => "Bloodborne",
          "platform" => "PS4",
          "selling_price" => 15,
          "buying_cost" => 5,
          "developer" => "From Software",
          "stock" => 20
          })

          game2.save()

          game3 = Game.new({
            "title" => "Spider-Man",
            "platform" => "PS4",
            "selling_price" => 60,
            "buying_cost" => 35,
            "developer" => "Insomniac",
            "stock" => 5
            })

            game3.save()

            game4 = Game.new({
              "title" => "Persona 5",
              "platform" => "PS4",
              "selling_price" => 25,
              "buying_cost" => 10,
              "developer" => "Atlus",
              "stock" => 0
              })

              game4.save()

              game5 = Game.new({
                "title" => "Sunset Overdrive",
                "platform" => "Xbox One",
                "selling_price" => 10,
                "buying_cost" => 3,
                "developer" => "Insomniac",
                "stock" => 4
                })

                game5.save()

                game6 = Game.new({
                  "title" => "Halo 5",
                  "platform" => "Xbox One",
                  "selling_price" => 15,
                  "buying_cost" => 10,
                  "developer" => "343 Industries",
                  "stock" => 20
                  })

                  game6.save()

                  game7 = Game.new({
                    "title" => "Gears Of War 4",
                    "platform" => "Xbox One",
                    "selling_price" => 18,
                    "buying_cost" => 10,
                    "developer" => "The Coalition",
                    "stock" => 12
                    })

                    game7.save()

                    game8 = Game.new({
                      "title" => "Overwatch",
                      "platform" => "Xbox One",
                      "selling_price" => 20,
                      "buying_cost" => 15,
                      "developer" => "Blizzard",
                      "stock" => 1
                      })

                      game8.save()

                      game9 = Game.new({
                        "title" => "The Legend Of Zelda: Breath Of The Wild",
                        "platform" => "Switch",
                        "selling_price" => 60,
                        "buying_cost" => 30,
                        "developer" => "Nintendo",
                        "stock" => 0
                        })

                        game9.save()

                        game10 = Game.new({
                          "title" => "Doom",
                          "platform" => "Switch",
                          "selling_price" => 35,
                          "buying_cost" => 25,
                          "developer" => "id Software",
                          "stock" => 0
                          })

                          game10.save()

                          game11 = Game.new({
                            "title" => "Super Smash Bros. Ultimate",
                            "platform" => "Switch",
                            "selling_price" => 60,
                            "buying_cost" => 40,
                            "developer" => "Nintendo",
                            "stock" => 35
                            })

                            game11.save()

                            game12 = Game.new({
                              "title" => "Dark Souls: Remastered",
                              "platform" => "Switch",
                              "selling_price" => 20,
                              "buying_cost" => 14,
                              "developer" => "From Software",
                              "stock" => 15
                              })

                              game12.save()

                              binding.pry
                              nil
