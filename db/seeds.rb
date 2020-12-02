Review.destroy_all
User.destroy_all
# user = User.create!(email:"test@test.com", password: "123456")

# name = ["Raphael Costa", "Mark Lee", "Eros Magno", "Nicolas Enne", "Raphaeros Markolas", "Alanis Morissette"]

user1=User.create!(user: user, name: "Eros Magno")
user2=User.create!(user: user, name: "Raphael Costa")
user3=User.create!(user: user, name: "Mark Lee")
user4=User.create!(user: user, name: "Nicolas Enne")
user5=User.create!(user: user, name: "Raphaeros Markolas")
user6=User.create!(user: user, name: "Alanis Morissette")


neighborhoods = ["Vila Mariana",
                  "Jardins",
                  "Ipiranga",
                  "Butantã",
                  "Chácara Klabin",
                  "Santana",
                  "Tatuapé",
                  "Santa Cecília",
                  "Moema",
                  "Jabaquara",
                  "Mooca",
                  "Lapa",
                  "Vila Madalena",
                  "Bela Vista",
                  "Paraíso"]

amenities = [{ school: rand(0..5) },
            { gym: rand(0..5) },
            { hospital: rand(0..5) },
            { supermarket: rand(0..5) },
            { restaurant: rand(0..5) },
            { mobility: rand(0..5) }]


neighborhoods.each do |neighborhood|
n = Neighborhood.create!(name: neighborhood)
rand(1..4).times do
amenity = amenities.sample
# digamos que o sample fosse {bar: 5}
bairro[amenity.keys.first] = ameninty.values
# seria como bairro[:bar] = 5
end
end

# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating restaurants..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

# [ dishoom, pizza_east ].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"



# Bairro.create!({
#   name: "Le Dindon en Laisse",
#   address: "18 Rue Beautreillis, 75004 Paris, France"
# })


# image1=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-1_t4zlk1.png")
# image2=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-2_zku4ke.png")
# image3=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-3_sxl4gu.png")
# image4=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-4_iivrby.png")
# image5=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176917/find-your-plants/plant-5_mz7ldm.png")
# image6=URI.open("https://res.cloudinary.com/nicolasenne/image/upload/v1606176918/find-your-plants/plant-6_pmi0dg.png")

# plant1.photo.attach(io: image1, filename: "photo#{plant1.id}", content_type: "image/png")
# plant2.photo.attach(io: image2, filename: "photo#{plant2.id}", content_type: "image/png")
# plant3.photo.attach(io: image3, filename: "photo#{plant3.id}", content_type: "image/png")
# plant4.photo.attach(io: image4, filename: "photo#{plant4.id}", content_type: "image/png")
# plant5.photo.attach(io: image5, filename: "photo#{plant5.id}", content_type: "image/png")
# plant6.photo.attach(io: image6, filename: "photo#{plant6.id}", content_type: "image/png")
