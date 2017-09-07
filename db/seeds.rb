Photo.destroy_all
User.destroy_all
Profile.destroy_all
Event.destroy_all
Category.destroy_all



#Categories
education = Category.create(name: "education")
art = Category.create(name: "Art")
sport = Category.create(name: "Sport")


#Users
xu = User.create(email: "xu@codaisseurup.com", password: "1234567")
ren = User.create(email: "ren@codaisseurup.com", password: "1234567")
lun = User.create(email: "lun@codaisseurup.com", password: "1234567")


#Events
event1 = Event.create(name: "Learn a new language", description: "AAA", location: "Amsterdam", capacity: 30, includes_food: false, includes_drinks: true, starts_at: "05/09/2017 10:00", ends_at: "05/09/2017 18:00", active: true, user: ren, categories:[education, sport])
event2 = Event.create(name: "Run in the park", description: "BBB", location: "Amsterdam", capacity: 10, includes_food: false, includes_drinks: false, starts_at: "06/09/2017 08:00", ends_at: "06/09/2017 10:00", active: true, user: lun, categories:[sport])
event3 = Event.create(name: "Craft Class", description: "CCC", location: "Amsterdam", capacity: 15, includes_food: false, includes_drinks: true, starts_at: "07/09/2017 19:00", ends_at: "05/09/2017 20:00", active: true, user: xu, categories:[education, art])


#Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786600/227078_home_hero_ilvkzr.jpg", event: event1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786600/Arts_and_crafts_pottery_resize_lnia8s.jpg", event: event1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786601/open-access-pottery-glass-fusing-studio-membership-pay-per-day_i4x4kl.jpg", event: event1)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786600/run-quality-hotel-froso-park_rjqiht.jpg", event: event2)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786600/DefaultPhoto-Running2_oi7p9i.jpg", event: event2)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786600/618114c0e88a348918930d1dfc5f0621--fitness-inspiration-running-inspiration_reowl2.jpg", event: event2)
photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786600/Depositphotos_35963367_original-1024x683_hk7pjv.jpg", event: event3)
photo8 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786600/bonjour_al8g6i.jpg", event: event3)
photo9 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dnxpj95us/image/upload/v1504786600/Fluent-Forever-App-And-Book-Promise-To-Help-You-Learn-A-Language1_shdlnp.jpg", event: event3)
