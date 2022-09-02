module BooksHelper
  def rent_button(book)
    if book.rents.empty? || book.rents.last.ended?
      button_to("Rent this book", rents_path(book_id: book), method: :post, class: 'btn btn-primary rent-button')
    else
      raw '<div class="btn btn-outline-secondary disabled rent-button">Unavailable</div>'
    end
  end

  def book_status(book)
    if book.rents.empty? || book.rents.last.ended?
      raw '<span class="text-success">available</span>'
    else
      raw '<span class="text-danger">rented</span>'
    end
  end

end
