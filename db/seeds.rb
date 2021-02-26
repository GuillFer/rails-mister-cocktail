# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

# serialized = open('https://www.thecocktaildb.com/api/json/v1/1/random.php').read
serialized = open('https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=11007').read
cocktail = JSON.parse(serialized)


# Ingredients
Ingredient.create(name: "lemon")
Ingredient.create(name: "gin")
Ingredient.create(name: "orange")
Ingredient.create(name: "whisky")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rhum")
Ingredient.create(name: "citron")
Ingredient.create(name: "citron vert")
Ingredient.create(name: "jus de citron")
Ingredient.create(name: "romarin")
Ingredient.create(name: "thym")
Ingredient.create(name: "ginger beer")
Ingredient.create(name: "tonic")
Ingredient.create(name: "blanc d'oeuf")
Ingredient.create(name: "bitter")
Ingredient.create(name: "sucre")

# Cocktails
Cocktail.create(name: "Gin Tonic")
Cocktail.create(name: "Whisky Sour")
Cocktail.create(name: "Ti Punch")
Cocktail.create(name: "Canyon Drive")
