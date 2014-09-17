require 'spec_helper'

feature "Like an image", :js => true do
  before :each do
    User.destroy_all
    Picture.destroy_all
    Like.destroy_all

    mitch = User.create(name: "Mitch", profile_pic: "https://avatars2.githubusercontent.com/u/6688401?v=2&s=460")
    admin = User.create(name: "You")
    p1 = Picture.create(url: "http://media.tumblr.com/a79ffa1104c7ab99e370c926eb7b42d6/tumblr_inline_nam36seHsG1rtan47.jpg", description: "Ada Lovelace is the best!")
    mitch.pictures << p1
  end

  scenario "user can like an image" do
    visit root_path
    expect(page).to_not have_text("You")
    find("#click-me").click

    expect(page).to have_text("You")
  end
end

feature "Unlike an image", :js => true do
  before :each do
    User.destroy_all
    Picture.destroy_all
    Like.destroy_all

    mitch = User.create(name: "Mitch", profile_pic: "https://avatars2.githubusercontent.com/u/6688401?v=2&s=460")
    admin = User.create(name: "You")
    p1 = Picture.create(url: "http://media.tumblr.com/a79ffa1104c7ab99e370c926eb7b42d6/tumblr_inline_nam36seHsG1rtan47.jpg", description: "Ada Lovelace is the best!")
    mitch.pictures << p1
    Like.create(picture_id: p1.id, user_id: admin.id)
  end

  scenario "user can unlike an image" do
    visit root_path
    expect(page).to have_text("You")
    find("#click-me").click

    expect(page).to_not have_text("You")
  end
end