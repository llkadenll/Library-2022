module RentsManager
  class BookRenter < ApplicationService
    def initialize(book, current_user)
      @book = book
      @renter = current_user
    end

    def call
      if @book.rented?
        return false
      end

      @book.rented!
      rented_book = Rent.new(user: @renter, book: @book)
      return rented_book.save
    end
  end
end
