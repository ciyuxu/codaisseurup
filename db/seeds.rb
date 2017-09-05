User.destroy_all

xu = User.create(email: "ciyuxu@hotmail.com", password: "1234567")

event = Event.create(name: "Hackathon", description: "AAA", location: "Amsterdam", capacity: 30, includes_food: false, includes_drinks: true, starts_at: "05/09/2017 10:00", ends_at: "05/09/2017 18:00", active: true, user: xu)
