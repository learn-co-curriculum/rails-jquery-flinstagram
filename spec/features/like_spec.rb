require 'spec_helper'

feature "Capybara: Like an image", :js => true do
  before :each do
    mitch = User.create(name: "Mitch")
    admin = User.create(name: "You")
    p1 = Picture.create
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
    page.find(".like-btn").click

    expect(page).to have_text("You")
  end
end

feature "Capybara: Unlike an image", :js => true do
  before :each do
    mitch = User.create(name: "Mitch")
    admin = User.create(name: "You")
    p1 = Picture.create
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
    page.find(".like-btn").click

    expect(page).to_not have_text("You")
  end
end