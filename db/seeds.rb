# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do |i|

  Concert.create(
    band: "Band#{i}",
    venue: "El bar de Eric #{i}",
    city: "Granada",
    date: Time.now,
    price: 29.99,
    description: "Test description #{i}"
  )

end
