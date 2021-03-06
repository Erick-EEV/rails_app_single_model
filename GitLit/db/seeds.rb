# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cannabis.destroy_all

20.times do
    Cannabis.create(strain: Faker::Cannabis.strain,
                    classification: ["Sativa", "Indica", "Hybrid"].sample,
                    price: rand(10.0..20.0).round(2),
                    description: Faker::Cannabis.health_benefit)
end

#Why did classification not work when named type.