# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# USERS

mitch = User.create(name: "Rose", profile_pic: "https://avatars0.githubusercontent.com/u/8061074?v=3&s=400")
arel = User.create(name: "Josh", profile_pic: "https://avatars3.githubusercontent.com/u/7979635?v=3&s=400")
katie = User.create(name: "Katie", profile_pic: "https://avatars1.githubusercontent.com/u/5709920?v=2&s=400")
amanda = User.create(name: "Amanda", profile_pic: "https://avatars1.githubusercontent.com/u/8355328?v=3&s=400")
ian = User.create(name: "Ian", profile_pic: "https://avatars0.githubusercontent.com/u/5270046?v=2&s=460")
admin = User.create(name: "You")

# PICTURES

p1 = Picture.create(url: "http://media.tumblr.com/143a1ad44b56a6230102f356376cddbd/tumblr_inline_napzyh0kLY1rtan47.jpg", description: "#swag #hashtag #flatironschool")
p2 = Picture.create(url: "http://media.tumblr.com/a79ffa1104c7ab99e370c926eb7b42d6/tumblr_inline_nam36seHsG1rtan47.jpg", description: "Ada Lovelace is the best!")
p3 = Picture.create(url: "http://photos-a.ak.instagram.com/hphotos-ak-xap1/928356_1548439958712856_496659117_n.jpg", description: "You're all kind of awesome. #FlatironLove")
p4 = Picture.create(url: "http://photos-c.ak.instagram.com/hphotos-ak-xfa1/10617194_1513100395594490_1035216188_n.jpg", description: "Things got crazy after yesterday’s #sciencefair")
p5 = Picture.create(url: "http://photos-g.ak.instagram.com/hphotos-ak-xfa1/10575971_1452379271697830_1484945239_n.jpg", description: "High schoolers took a quick field trip.")

# LIKES

Like.create(user_id: 5, picture_id: 1)
Like.create(user_id: 4, picture_id: 1)
Like.create(user_id: 1, picture_id: 1)

Like.create(user_id: 5, picture_id: 2)
Like.create(user_id: 2, picture_id: 2)
Like.create(user_id: 3, picture_id: 2)
Like.create(user_id: 4, picture_id: 2)
Like.create(user_id: 1, picture_id: 2)

Like.create(user_id: 3, picture_id: 3)
Like.create(user_id: 4, picture_id: 3)

Like.create(user_id: 3, picture_id: 4)
Like.create(user_id: 5, picture_id: 4)
Like.create(user_id: 2, picture_id: 4)
Like.create(user_id: 1, picture_id: 4)

Like.create(user_id: 3, picture_id: 5)
Like.create(user_id: 2, picture_id: 5)
Like.create(user_id: 1, picture_id: 5)

arel.pictures << p1
katie.pictures << p2
mitch.pictures << p3
amanda.pictures << p4
ian.pictures << p5
