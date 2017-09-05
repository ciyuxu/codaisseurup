Category.destroy_all
User.destroy_all


education = Category.create(name: "education")
art = Category.create(name: "Art")
sport = Category.create(name: "Sport")



xu = User.create(email: "xu@codaisseurup.com", password: "1234567")
ren = User.create(email: "ren@codaisseurup.com", password: "1234567")
lun = User.create(email: "lun@codaisseurup.com", password: "1234567")



event = Event.create(name: "Hackathon", description: "AAA", location: "Amsterdam", capacity: 30, includes_food: false, includes_drinks: true, starts_at: "05/09/2017 10:00", ends_at: "05/09/2017 18:00", active: true, user: ren, categories:[education, sport])
event = Event.create(name: "Run in the park", description: "BBB", location: "Amsterdam", capacity: 10, includes_food: false, includes_drinks: false, starts_at: "06/09/2017 08:00", ends_at: "06/09/2017 10:00", active: true, user: lun, categories:[sport])
event = Event.create(name: "Craft Class", description: "CCC", location: "Amsterdam", capacity: 15, includes_food: false, includes_drinks: true, starts_at: "07/09/2017 19:00", ends_at: "05/09/2017 20:00", active: true, user: xu, categories:[education, art])
