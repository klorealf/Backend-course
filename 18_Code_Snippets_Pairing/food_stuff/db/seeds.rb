# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#Nutrient_Group
nutrient_groups = NutrientGroup.create([
   { name: 'protein', description: 'tbd' },
   { name: 'fat', description: 'tbd'},
   { name: 'carb', description: 'tbd'}
  ])

#Food
foods = Food.create([
  { name: 'Yogurt', description: 'Greek Yogurt', serving_size: 170, measurement: 'grams', image_url: 'http://thescienceofeating.com/wp-content/uploads/2013/01/Favorite-Products-Fage-Greek-Yogurt.jpg'},

  { name: 'Avocado', description: 'Amazing fruit', serving_size: 1, measurement: 'ounce'},

  { name: 'Ice Cream', description: 'Vanilla', serving_size: 0.5, measurement: 'cup'}

  ])

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
