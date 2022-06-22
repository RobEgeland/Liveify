puts "🌱 Seeding spices..."

User.create(name: "Rob", age: 23, location: "Chicago")
User.create(name: "Charlie", age: 18, location: "Detroit")
User.create(name: "Christine", age: 27, location: "Fort Worth")
User.create(name: "Sam", age: 20, location: "Los Angeles")

Artist.create(name: "Goth Babe", genre: "Surf Rock", members: 1)
Artist.create(name: "Neil Young", genre: "Folk Rock", members: 1)
Artist.create(name: "Tame Impala", genre: "Pysch Rock", members: 1)
Artist.create(name: "Vampire Weekend", genre: "Indie Rock", members: 4)

Concert.create(name: "Lollapalooza", location: "Chicago", venue: "Grant Park", artist_id: 1, user_id: 1)
Concert.create(name: "Bonnaroo", location: "Manchester, TN", venue: "Great Stage Park", artist_id: 3, user_id: 4)
Concert.create(name: "Coachella", location: "Indio, CA", venue: "Empire Polo Club", artist_id: 4, user_id: 3)
Concert.create(name: "Newport Folk Fest", location: "Newport RI", venue: "Fort Adams State Park", artist_id: 2, user_id: 2)


puts "✅ Done seeding!"
