sf = City.find_or_create_by(name: "San Francisco", location: 'CA, US', population: 500000, time_zone: "PST")

danielle = User.find_or_create_by(name: "Danielle")
soyeong = User.find_or_create_by(name: "Soyeong")

Favorite.find_or_create_by(user_id: 1, city_id: 1)
