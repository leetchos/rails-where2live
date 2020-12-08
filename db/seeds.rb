Review.destroy_all
User.destroy_all
Amenity.destroy_all
Neighborhood.destroy_all
NeighborhoodAmenity.destroy_all
City.destroy_all

# user = User.create!(email:"test@test.com", password: "123456")

# name = ["Raphael Costa", "Mark Lee", "Eros Magno", "Nicolas Enne", "Raphaeros Markolas", "Alanis Morissette"]

user1=User.create!(email: 't1@t.com', password: 123456)
user2=User.create!(email: 't2@t.com', password: 123456)
user3=User.create!(email: 't3@t.com', password: 123456)
user4=User.create!(email: 't4@t.com', password: 123456)
user5=User.create!(email: 't5@t.com', password: 123456)
user6=User.create!(email: 't6@t.com', password: 123456)

city = City.create!(name: "sao paulo", state: "SP")

neighborhoods = ["Vila Mariana",
                  "Jardins",
                  "Ipiranga",
                  "Butantã",
                  "Chácara Klabin",
                  "Santana",
                  "Tatuapé",
                  "Parque são jorge",
                  "Barra Funda",
                  "Ibirapuera",
                  "jardim Europa",
                  "Jardim Paulista",
                  "jardim America",
                  "Itaim Bibi",
                  "Vila Olímpia",
                  "Higienópolis",
                  "Cidade Moncões",
                  "Perdizes",
                  "Pacaembu",
                  "Alto Pinheiros",
                  "Santa Cecília",
                  "Moema",
                  "Jabaquara",
                  "Mooca",
                  "Lapa",
                  "Vila Madalena",
                  "Bela Vista",
                  "Itaquera",
                  "Brás",
                  "Cachoeirinha",
                  "Anhanguera",
                  "Campo Limpo",
                  "Capão Redondo",
                  "Vila Andrade",
                  "Capela do Socorro",
                  "Cidade Dutra",
                  "Grajaú",
                  "Socorro",
                  "Butantã",
                  "Morumbi"
                  "Interlagos",
                  "Santo Amaro",
                  "Pirituba",
                  "jaraguá",
                  "São Domingos",
                  "Santana",
                  "Carandiru",
                  "Tucuruvi",
                  "Aclimação",
                  "Mandaqui",
                  "Vila Maria",
                  "Vila Guilherme",
                  "Vila Medeiros",
                  "Vila jaguari",
                  "Tamboré",                 
                  "Bom Retiro",
                  "Sé Bela Vista",
                  "Cambuci",
                  "Consolação",
                  "Liberdade",
                  "República",
                  "Santa Cecília",
                  "Sé",
                  "Cidade Ademar",
                  "Pedreira",
                  "Ipiranga",
                  "Sacomã",
                  "Jabaquara",
                  "M'Boi Mirim",
                  "Jardim Ângela",
                  "Jardim São Luís",
                  "Parelheiros",
                  "Paraíso"]

school = Amenity.create!(name: "school")
gym = Amenity.create!(name: "gym")
hospital = Amenity.create!(name: "hospital")
supermarket = Amenity.create!(name: "supermarket")
restaurant = Amenity.create!(name: "restaurant")
mobility = Amenity.create!(name: "mobility")


neighborhoods.each do |neighborhood|
  n = Neighborhood.create!(name: neighborhood, city: city)
  n.neighborhood_amenities.create!(amenity: school, quantity: rand(3..8))
  n.neighborhood_amenities.create!(amenity: gym, quantity: rand(3..8))
  n.neighborhood_amenities.create!(amenity: hospital, quantity: rand(3..8))
  n.neighborhood_amenities.create!(amenity: supermarket, quantity: rand(3..8))
  n.neighborhood_amenities.create!(amenity: restaurant, quantity: rand(3..8))
  n.neighborhood_amenities.create!(amenity: mobility, quantity: rand(3..8))

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
