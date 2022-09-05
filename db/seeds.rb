def create_book(author, title, filename)
  description = "Lorem"

  book = Book.create(author: author, title: title, description: description)
  book.cover.attach(io: File.open(Rails.root.join('app/assets/images/seed/', filename)), filename: filename)
end

hp_titles = [
  "Harry Potter and the Philosopher's Stone",
  "Harry Potter and the Chamber of Secrets",
  "Harry Potter and the Prisoner of Azkaban",
  "Harry Potter and the Goblet of Fire",
  "Harry Potter and the Order of the Phoenix",
  "Harry Potter and the Half-Blood Prince",
  "Harry Potter and the Deathly Hallows"
]

User.create(email: 'admin@gmail.com', password: 'qwerty', role: :admin)
User.create(email: 'user@gmail.com', password: 'qwerty')

create_book('Stephen King', 'Fairy Tale', 'fairytale.jpeg')
create_book('Stephen King', 'Billy Summers', 'billysummers.jpeg')
create_book('Yuval Noah Harari', 'Sapiens. A Brief History of Humankind', 'sapiens.jpeg')
create_book('Michelle Obama', "Becoming", 'becoming.jpeg')
create_book('Colleen Hoover', "Ugly Love", 'uglylove.jpg')

7.times do |i|
  create_book('J. K. Rowling', hp_titles[i], 'hp'+(i+1).to_s+'.jpg')
end
