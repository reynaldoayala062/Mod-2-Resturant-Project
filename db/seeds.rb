# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Menu.destroy_all
Food.destroy_all
Ingredient.destroy_all
FoodIngredient.destroy_all

Menu.create(name: 'Food', image: 'https://i.pinimg.com/originals/85/1f/6e/851f6e5fff040f2b96b71950e91724ca.jpg', description: 'The main meal of the day, taken either around midday or in the evening.')
Menu.create(name: 'Coffee', image: 'https://images.all-free-download.com/images/graphicthumb/coffee_beans_poster_05_hd_picture_168368.jpg', description: 'A hot drink made from the roasted and ground seeds (coffee beans) of a tropical shrub.')
Menu.create(name: 'Dessert', image: 'https://eskipaper.com/images/cake-coffee-dessert-1.jpg', description: 'Add some desssert to satisfy your sweet tooth') 

15.times do
    Food.create(name: Faker::Food.dish, description: Faker::Food.description, price: Faker::Number.decimal(l_digits: 2, r_digits: 2), menu_id: 1)
end

15.times do
    Food.create(name: Faker::Coffee.blend_name, description: Faker::Coffee.notes, price: Faker::Number.decimal(l_digits: 1, r_digits: 2), menu_id: 2)
end

10.times do 
    Food.create(name: Faker::Dessert.variety, description: Faker::Dessert.flavor, price: Faker::Number.decimal(l_digits: 1, r_digits: 2), menu_id: 3)
end

80.times do 
    Ingredient.create(name: Faker::Food.ingredient)
end

foodingredient = [
    {food_id: 1, ingredient_id: 1},
    {food_id: 2, ingredient_id: 2},
    {food_id: 3, ingredient_id: 3},
    {food_id: 4, ingredient_id: 4},
    {food_id: 5, ingredient_id: 5},
    {food_id: 6, ingredient_id: 6},
    {food_id: 7, ingredient_id: 7},
    {food_id: 8, ingredient_id: 8},
    {food_id: 9, ingredient_id: 9},
    {food_id: 10, ingredient_id: 10},
    {food_id: 11, ingredient_id: 11},
    {food_id: 12, ingredient_id: 12},
    {food_id: 13, ingredient_id: 13},
    {food_id: 14, ingredient_id: 14},
    {food_id: 15, ingredient_id: 15},
    {food_id: 16, ingredient_id: 16},
    {food_id: 17, ingredient_id: 17},
    {food_id: 18, ingredient_id: 18},
    {food_id: 19, ingredient_id: 19},
    {food_id: 20, ingredient_id: 20},
    {food_id: 21, ingredient_id: 21},
    {food_id: 22, ingredient_id: 22},
    {food_id: 23, ingredient_id: 23},
    {food_id: 24, ingredient_id: 24},
    {food_id: 25, ingredient_id: 25},
    {food_id: 26, ingredient_id: 26},
    {food_id: 27, ingredient_id: 27},
    {food_id: 28, ingredient_id: 28},
    {food_id: 29, ingredient_id: 29},
    {food_id: 30, ingredient_id: 30},
    {food_id: 31, ingredient_id: 31},
    {food_id: 32, ingredient_id: 32},
    {food_id: 33, ingredient_id: 33},
    {food_id: 34, ingredient_id: 34},
    {food_id: 35, ingredient_id: 35},
    {food_id: 36, ingredient_id: 36},
    {food_id: 37, ingredient_id: 37},
    {food_id: 38, ingredient_id: 38},
    {food_id: 39, ingredient_id: 39},
    {food_id: 40, ingredient_id: 40},
    {food_id: 1, ingredient_id: 41},
    {food_id: 2, ingredient_id: 42},
    {food_id: 3, ingredient_id: 43},
    {food_id: 4, ingredient_id: 44},
    {food_id: 5, ingredient_id: 45},
    {food_id: 6, ingredient_id: 46},
    {food_id: 7, ingredient_id: 47},
    {food_id: 8, ingredient_id: 48},
    {food_id: 9, ingredient_id: 49},
    {food_id: 10, ingredient_id: 50},
    {food_id: 11, ingredient_id: 51},
    {food_id: 12, ingredient_id: 52},
    {food_id: 13, ingredient_id: 53},
    {food_id: 14, ingredient_id: 54},
    {food_id: 15, ingredient_id: 55},
    {food_id: 16, ingredient_id: 56},
    {food_id: 17, ingredient_id: 57},
    {food_id: 18, ingredient_id: 58},
    {food_id: 19, ingredient_id: 59},
    {food_id: 20, ingredient_id: 60},
    {food_id: 21, ingredient_id: 61},
    {food_id: 22, ingredient_id: 62},
    {food_id: 23, ingredient_id: 63},
    {food_id: 24, ingredient_id: 64},
    {food_id: 25, ingredient_id: 65},
    {food_id: 26, ingredient_id: 66},
    {food_id: 27, ingredient_id: 67},
    {food_id: 28, ingredient_id: 68},
    {food_id: 29, ingredient_id: 69},
    {food_id: 30, ingredient_id: 70},
    {food_id: 31, ingredient_id: 71},
    {food_id: 32, ingredient_id: 72},
    {food_id: 33, ingredient_id: 73},
    {food_id: 34, ingredient_id: 74},
    {food_id: 35, ingredient_id: 75},
    {food_id: 36, ingredient_id: 76},
    {food_id: 37, ingredient_id: 77},
    {food_id: 38, ingredient_id: 78},
    {food_id: 39, ingredient_id: 79},
    {food_id: 40, ingredient_id: 80},
]

foodingredient.each {|foodingredient| FoodIngredient.create(foodingredient)}




