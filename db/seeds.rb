# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

weather = Weather.create(id: 4, date: "2022/10/09", temperature: [42.3, 54.1, 54.1, 54.1, 54.1, 40.1,
    40.1, 39.4, 40.1, 43.1, 45.8, 48.6,
    50.5, 52.1, 53.4, 54.1, 54.0, 52.2,
    49.2, 47.1, 45.7, 44.7, 44.1, 43.2])

location = Location.create(lat: 32.5, lon: -93.6667, city: "Shreveport", state: "Louisiana", weather: weather)

weather = Weather.create(id: 5, date: "2022/10/10", temperature: [42.3, 54.1, 54.1, 54.1, 54.1, 40.1,
    40.1, 39.4, 40.1, 43.1, 45.8, 48.6,
    50.5, 52.1, 53.4, 54.1, 54.0, 52.2,
    49.2, 47.1, 45.7, 44.7, 44.1, 43.2])

location = Location.create(lat: 31.5, lon: -91.6667, city: "Omaha", state: "Nebraska", weather: weather)

weather = Weather.create(id: 3, date: "2022/10/11", temperature: [42.3, 54.1, 54.1, 54.1, 54.1, 40.1,
    40.1, 39.4, 40.1, 43.1, 45.8, 48.6,
    50.5, 52.1, 53.4, 54.1, 54.0, 52.2,
    49.2, 47.1, 45.7, 44.7, 44.1, 43.2])

location = Location.create(lat: 30.5, lon: -90.6667, city: "Mexico", state: "Monterrey", weather: weather)