module RentsHelper
  def return_button(rent)
    return raw '<div class="btn btn-outline-secondary disabled rent-button">Returned</div>' unless rent.ongoing?
    button_to("Return this book", return_book_path(rent), method: :patch, class: 'btn btn-primary return-button')
  end
end
