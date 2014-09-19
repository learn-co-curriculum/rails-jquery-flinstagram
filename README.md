---
tags: rails, javascript, ajax, jquery
languages: ruby, javascript
resources: 2
---

# Rails jQuery FLATstagram

## Description

FLATstagram is blowing up! All of the users love the ability to like a photo, but they hate waiting until the page reloads before they can see that beautiful red heart. It's time to add some Ajax to this Rails app!

## Instructions

### Setup

Before starting the lab, make sure you get everything set up correctly:

1. Run `rake db:migrate` to set up your DB.
2. Run `rake db:seed` to load the DB with some sweet, sweet data.
3. Run `rake db:migrate RAILS_ENV=test` to load up a separate test environment (for Capybara)

### Review the existing app

Visit [localhost:3000](http://localhost:3000) to see the current Rails app in action. You can click the like button below any picture to "like" it. The page automatically refreshes and shows the updated information for that picture.

### Your objective

Make the page update in real-time by changing the like button to fire Ajax call. __Hint:__ Select the button and make the Ajax call by using jQuery. Also, remember to update your controller so that it renders JSON!

### Tools you should use

- jQuery
- Ajax
- JSON

### Testing

This lab uses [Capybara](https://github.com/jnicklas/capybara) and the [SeleniumWebDriver](http://docs.seleniumhq.org/projects/webdriver/). Capybara and Selenium work by driving a web browser (Firefox) and pretending to be a real user. Capybara can click on things and interact with a website just like you or I. It's perfect for testing user interactions (like clicking a "like" button!) They have a few extra requirements, so make sure you complete these steps before running `rspec`:

1. Run `rake db:migrate RAILS_ENV=test` to load up a separate test environment (for Capybara)
2. Install [Firefox](https://www.mozilla.org/en-US/firefox/new/) if you don't have it (for Selenium)

## Resources

- [jQuery Documentation - jQuery.ajax()](http://api.jquery.com/jquery.ajax/)
- [Learning About Ajax](http://blog.flatironschool.com/post/56146220219/learning-about-ajax)