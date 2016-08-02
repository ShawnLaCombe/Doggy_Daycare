# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
breeds = ["poodle","dingo","german shepard", "australian shepard", "welsh cortie", "dalmation", "great dane", "doberman", "pit bull", "rotweiler", "jack russel", "chiuhuana", "forever dog", "pokemon"]

  breeds.each do |breed|
    Breed.create(name: breed)
    end

    puts "It did something"