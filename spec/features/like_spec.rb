require 'spec_helper'

feature "Like an image", :js => true do
  before :each do
    mitch = User.create(name: "Mitch")
    admin = User.create(name: "You")
    p1 = Picture.create(url: "http://media.tumblr.com/a79ffa1104c7ab99e370c926eb7b42d6/tumblr_inline_nam36seHsG1rtan47.jpg")
    mitch.pictures << p1
  end

  after :each do
    User.destroy_all
    Picture.destroy_all
    Like.destroy_all
  end

  scenario "user can like an image" do
    visit root_path
    expect(page).to_not have_text("You")
    page.find("#click-me").click

    expect(page).to have_text("You")
  end
end

feature "Unlike an image", :js => true do
  before :each do
    mitch = User.create(name: "Mitch")
    admin = User.create(name: "You")
    p1 = Picture.create(url: "http://media.tumblr.com/a79ffa1104c7ab99e370c926eb7b42d6/tumblr_inline_nam36seHsG1rtan47.jpg")
    mitch.pictures << p1
    Like.create(picture_id: p1.id, user_id: admin.id)
  end

  after :each do
    User.destroy_all
    Picture.destroy_all
    Like.destroy_all
  end

  scenario "user can unlike an image" do
    visit root_path
    expect(page).to have_text("You")
    page.find("#click-me").click

    expect(page).to_not have_text("You")
  end
end