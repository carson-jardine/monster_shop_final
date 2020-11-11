# Monster Shop
Turing School of Software and Design - BE Module 2 Final Project

### Overview
"Monster Shop" is a fictional e-commerce website where users can register, add items to their cart and checkout, Merchant users can fulfill orders and admin users can ship orders. Additionally, a merchant user can create, apply, edit, and delete discounts for "bulk" purchases of items they sell.

Check out the live site on Heroku (here!)[https://tranquil-sea-69659.herokuapp.com]

Testing Status:
* SimpleCov - 100% Coverage
* RSpec - 278 Tests, 0 Failures

### Implementation
Fork and/or clone this repo `git@github.com:carson-jardine/monster_shop_final-1.git`

Install and Update Gems
```
bundle install
bundle update
```

Setup Your Database
`rails db:{drop,create,migrate,seed}`

##### Environment Requirements:
* Rails 5.2.4
* Ruby 2.5.3

##### Gems:
* capybara - Application testing and interaction
* shoulda-matchers - Simplifies testing syntax
* bcrypt- Password Encryption

### Schema
<img src="https://github.com/carson-jardine/monster_shop_final-1/blob/main/Screen%20Shot%202020-11-10%20at%209.28.05%20PM.png" width="450" height="350">
