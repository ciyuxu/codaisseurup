User.destroy_all

xu = User.create(email: "ciyuxu@hotmail.com", password: "1234567")

event = Event.create(name: "Hackathon", description: "aaa", location: "Amsterdam", price: 5.0, capacity: 30, includes_food: false, includes_drinks: true, active: true)
