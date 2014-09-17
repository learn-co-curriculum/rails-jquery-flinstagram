# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# USERS

mitch = User.create(name: "Mitch", profile_pic: "https://avatars2.githubusercontent.com/u/6688401?v=2&s=460")
arel = User.create(name: "Arel", profile_pic: "https://avatars3.githubusercontent.com/u/1619902?v=2&s=460")
katie = User.create(name: "Katie", profile_pic: "https://avatars1.githubusercontent.com/u/5709920?v=2&s=400")
amanda = User.create(name: "Amanda", profile_pic: "https://avatars2.githubusercontent.com/u/3723552?v=2&s=400")
ian = User.create(name: "Ian", profile_pic: "https://avatars0.githubusercontent.com/u/5270046?v=2&s=460")
admin = User.create(name: "You")

# PICTURES

p1 = Picture.create(url: "http://media.tumblr.com/a79ffa1104c7ab99e370c926eb7b42d6/tumblr_inline_nam36seHsG1rtan47.jpg", description: "Ada Lovelace is the best!")
p2 = Picture.create(url: "http://media.tumblr.com/143a1ad44b56a6230102f356376cddbd/tumblr_inline_napzyh0kLY1rtan47.jpg", description: "#swag #hashtag #oppositeofratchet")
p3 = Picture.create(url: "http://media.tumblr.com/745f5912c557883a2d8f9e3e1a65b9c2/tumblr_inline_naq04uTh2M1rtan47.jpg", description: "CONGRATS, RUBY 005 & IOS 002!")

# LIKES
Like.create(user_id: 3, picture_id: 3)
Like.create(user_id: 4, picture_id: 3)

Like.create(user_id: 5, picture_id: 2)
Like.create(user_id: 4, picture_id: 2)
Like.create(user_id: 1, picture_id: 2)

Like.create(user_id: 5, picture_id: 1)
Like.create(user_id: 2, picture_id: 1)
Like.create(user_id: 3, picture_id: 1)
Like.create(user_id: 4, picture_id: 1)
Like.create(user_id: 1, picture_id: 1)

katie.pictures << p1
arel.pictures << p2
mitch.pictures << p3