module RentsManager
  class BookReturner < ApplicationService
    def initialize(rent)
      @rent = rent
    end

    def call
      if @rent.ended?
        return false
      end
      
      @rent.ended!
      return true
    end

  end
end
