# README

This Ruby on Rails app is inspired by (the popular?) [Build a Twitter clone in 10 minutes with Rails, CableReady, and StimulusReflex](https://youtu.be/F5hA79vKE_E) by [@hopsoft](https://github.com/hopsoft). Where @hopsoft used Rails 6.x, CableReady, and StimulusReflex to build a  Twitter clone, here I used Rails 7.x and Hotwire instead. The key take away between this comparison is two-fold:
1. Since Rails 6.x, in Rails 7.x+ you can more intuitively build a Twitter clone app with Hotwire
2. and probably more importantly, you can build the same exact app using different tools (CableReady + StimulusReflex vs Hotwire)

Steps necessary to get the application up and running:

* Ruby version: see Gemfile

* System dependencies: see Gemfile

* Database creation: `rails db:reset`

* Database initialization: `rails db:migrate`

* Services (job queues, cache servers, search engines, etc.): you need a running **redis** server instance

* Deployment instructions: not meant to deployed anywhere, this is only meant to run in development mode as an educational sample app
