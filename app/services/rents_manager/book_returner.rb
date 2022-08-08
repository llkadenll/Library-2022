module RentsManager
  class BookReturner < ApplicationService
    def initialize(rent)
      @rent = rent
    end

    def call
      if @rent.ended?
        return false
      end
      
      @book = @rent.book
      @book.available!
      @rent.ended!
      return true
    end

  end
end
