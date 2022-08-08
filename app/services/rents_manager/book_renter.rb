module RentsManager
  class BookRenter < ApplicationService
    def initialize(book, current_user)
      @book = book
      @renter = current_user
    end

    def call
      if @book.rents.last.ongoing?
        return false
      end

      rent = Rent.new(user: @renter, book: @book)
      return rent.save
    end
  end
end
