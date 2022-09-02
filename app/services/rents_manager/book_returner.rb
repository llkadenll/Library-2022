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
      @rent.ended_at = Time.now
      @rent.save
      return true
    end

  end
end
