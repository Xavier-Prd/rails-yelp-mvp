require 'faker'

Restaurant.destroy_all
puts "Les restos sont bien détruits"
resto_category = [ "chinese", "italian", "japanese", "french", "belgian" ]

6.times do
  Restaurant.create!(name: Faker::Restaurant.name,
  address: Faker::JapaneseMedia::Doraemon.location,
  category: resto_category.sample,
  phone_number: Faker::PhoneNumber.cell_phone_in_e164)
end
puts "Création des restos terminée, all good"

25.times do
  Review.create!(rating: [ 0, 1, 2, 3, 4, 5 ].sample,
  content: Faker::Restaurant.review,
  restaurant: Restaurant.all.sample)
end
puts "Création des avis terminée!"
