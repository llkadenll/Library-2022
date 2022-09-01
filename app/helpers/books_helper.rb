module BooksHelper
  def rent_button(book)
    if book.rents.empty? || book.rents.last.ended?
      button_to("Rent this book", rents_path(book_id: book), method: :post, class: 'btn btn-primary rent-button')
    else
      raw '<div class="btn btn-outline-secondary disabled rent-button">Unavailable</div>'
    end
  end

  def book_status(book)
    book.rents.empty? || book.rents.last.ended? ? "available" : "rented"
  end

end
