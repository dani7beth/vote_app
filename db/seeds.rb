# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# one to many Demo room has many user, user belongs_to room
# room1 = Room.create(code: "room1", num_users: 2, tag: "food")
# user1 = room1.users.create(name: "user1")
# user2 = room1.users.create(name: "user2")

# room1.users # to get all users for room
# user1.room # gets room for user

# create my things
# food_thing1 = Thing.create(name: "food_thing1", tag: "food")
# food_thing2 = Thing.create(name: "food_thing2", tag: "food")
# activity_thing2 = Thing.create(name: "activity_thing2", tag: "activity")
# activity_thing2 = Thing.create(name: "activity_thing2", tag: "activity")

# room1.get_things # this get rooms things

# grab things group by tag
# Thing.all.where(tag: "food")
# Thing.all.where(tag: "activity")

# how do we like something? by adding an entry to our likes table

# like1 = food_thing1.likes.create(user_id: user1.id, room_id: room1.id)
# User.find(4).likes # this grabs user likes
# user1.things things user likes
# food_thing1.users
food = "food"
game = "game"
random = "random"

# have default things
10.times do
    Thing.create(name: Faker::Restaurant.name, tag: "food")
end

10.times do 
    Thing.create(name: Faker::Game.title, tag: "game")
end

10.times do
    Thing.create(name: Faker::Hipster.sentence(word_count: 3), tag: "random")
end

#room is created
test_food_room = Room.create(code: "test_food", num_users: 4, tag:food)
# test_game_room = Room.create(code: "test_game", num_users: 4, tag: game)

#User joing room (name for user is really not needed)
u1 = test_food_room.users.create(name:'user1')
u2 = test_food_room.users.create(name:'user2')
u3 = test_food_room.users.create(name:'user3')

#i am going to join this room on when I test
thing = Thing.all.where(tag: "food")[0]
u1.likes.create(thing_id: thing.id,room_id: test_food_room.id)
u2.likes.create(thing_id: thing.id,room_id: test_food_room.id)
u3.likes.create(thing_id: thing.id,room_id: test_food_room.id)
