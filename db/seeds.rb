# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding dishes!!! 🍽️ 🍗 🥧"

def make_ingredients
	ingredients = ''
	5.times { ingredients += Faker::Food.ingredient + ', '}
	ingredients + Faker::Food.ingredient
end

10.times do

    Dish.create(name: Faker::Food.dish, ingredients: make_ingredients , rating: Faker::Number.between(from: 1, to: 10))

end

puts "seeding holidays!!! 🎃 🦃 🎄 "

Holiday.create(name: "Halloween", month: "October")
Holiday.create(name: "Thanksgiving", month: "November")
Holiday.create(name: "Christmas", month: "December")


HolidayDish.create(holiday_id: 1, dish_id: 1)
HolidayDish.create(holiday_id: 2, dish_id: 2)
HolidayDish.create(holiday_id: 3, dish_id: 3)
HolidayDish.create(holiday_id: 1, dish_id: 4)
HolidayDish.create(holiday_id: 2, dish_id: 5)
HolidayDish.create(holiday_id: 3, dish_id: 6)
HolidayDish.create(holiday_id: 1, dish_id: 7)
HolidayDish.create(holiday_id: 2, dish_id: 8)
HolidayDish.create(holiday_id: 3, dish_id: 9)
HolidayDish.create(holiday_id: 1, dish_id: 10)

puts "seeding finished!!!!"