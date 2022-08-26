# 📖 Library Project

The project introduces library application which might be used by librarians and readers. You can watch it live on [Heroku](https://safe-fjord-50129.herokuapp.com/). Most of the functions are available for registered users. To make it simpler you can use the following account: <br>

Email: user@gmail.com <br>
Password: qwerty

## Screenshots
<img src="screenshots/1.png">
<img src="screenshots/2.png">
<img src="screenshots/3.png">

## ✏️ Description

Every user can glance through the list of books in the library. He can registrate and then log in to his account. Once it's done, a user can rent books but only these with 'available' status. Rented books are shown in their own tab, where users can return books. Users cannot get access to other users' rents. I added basic styling with Bootstrap to make the application look more transparent.

## 🛠 Tech Stack

- Ruby
- Rails
- PostgreSQL

**Gems:**
- Devise
- Bootstrap
- Sass Rails
- Pagy
- Rspec
- Shoulda-matchers
- Factory Bot
- Capybara

### 🛠 Launching
Install gems:
```
bundle install
```
Migrate the database:
```
rails db:migrate
```
Seed the database:
```
rails db:seed
```
Run the application:
```
rails s
```

## 🚨 Tests

To run tests:
```
rspec
```
