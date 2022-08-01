
# 📖 Library Project

The project introduces library application which might be used by librarians and readers.

## ✏️ Description

Each of the users can glance through the list of books in the library. He can registrate and then log in to his account. Once it's done, a user can rent books but only these with 'available' status. Rented books are shown in their own tab, where users can return books. Users cannot get access to other users' rents. I added basic styling with Bootstrap to make the application look more transparent.

## 🛠 Tech Stack

- Ruby
- Rails
- PostgreSQL

**Gems:**
- Devise
- Bootstrap
- Rspec
- Shoulda-matchers
- Factory Bot
- Sass Rails

### 🛠 Launching
Install gems:
```
bundle install
```
Migrate the database:
```
rails db:migrate
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
