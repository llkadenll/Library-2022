User.create(email: 'user@gmail.com', password: 'qwerty')

hp_titles = [
  "Harry Potter and the Philosopher's Stone",
  "Harry Potter and the Chamber of Secrets",
  "Harry Potter and the Prisoner of Azkaban",
  "Harry Potter and the Goblet of Fire",
  "Harry Potter and the Order of the Phoenix",
  "Harry Potter and the Half-Blood Prince",
  "Harry Potter and the Deathly Hallows"
]

hp_description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Sed luctus, sem a dignissim tempor, velit quam aliquet eros, et tincidunt enim massa ac sapien. 
Donec condimentum pulvinar mauris non viverra. Suspendisse ac mi ut felis sagittis tempus. 
Maecenas dignissim augue ac quam interdum, non posuere ipsum rhoncus. Nunc auctor facilisis lobortis. 
Etiam tempus volutpat orci venenatis auctor. Sed sed mollis arcu. Integer vitae metus posuere, 
consectetur turpis sit amet, suscipit turpis. Phasellus non nisl ipsum. 
Vestibulum id elementum nibh, id congue massa. Aenean non imperdiet diam, at sollicitudin ipsum. 
Aenean viverra elementum neque quis elementum. Mauris pellentesque metus lobortis tellus ornare aliquam. 
Etiam sagittis id dui mattis vehicula. Aliquam egestas justo id lacus fermentum, at rutrum augue dapibus.\n\n
Quisque et elit quis nisl molestie ultrices a sed tortor. Duis tempus maximus vulputate. 
Mauris feugiat ipsum non faucibus porta. Morbi elementum scelerisque diam sagittis auctor. 
Cras elit sem, tempus pellentesque condimentum non, ultrices tristique nibh. 
Morbi eget est eget nisi placerat ullamcorper. Sed pellentesque sagittis velit, 
sed hendrerit urna pulvinar ut. Aliquam blandit ante tellus, placerat molestie risus rutrum eu. 
Sed in turpis sit amet justo sodales facilisis non in turpis. Integer dapibus magna in leo porttitor gravida. 
Nulla mattis lobortis turpis in mollis. Nunc non enim sit amet tellus varius pretium. 
Morbi id lorem eu odio faucibus porttitor."

hp_titles.each do |title|
  Book.create(author: 'J. K. Rowling', title: title, description: hp_description)
end
