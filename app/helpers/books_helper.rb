module BooksHelper
  def rent_button(book)
    button_to("Rent this book", rents_path(book_id: book), method: :post, class: 'btn btn-primary') if book.available?
  end
end
