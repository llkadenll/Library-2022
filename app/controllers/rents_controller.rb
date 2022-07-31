class RentsController < ApplicationController
  before_action :set_rent, only: %i[ return ]

  # GET /rents or /rents.json
  def index
    @rents = Rent.all
  end

  def rent
    @book = Book.find(params[:id])

    if @book.rented?
      redirect_to books_url, alert: "The book is already rented."
      return
    end

    @book.rented!
    @rent = Rent.create(user: current_user, book: @book)
    redirect_to books_url, notice: "Book was successfully rented."
  end

  def return
    if @rent.ended?
      redirect_to rents_url, alert: "The book is already returned."
      return
    end

    @book = @rent.book

    @book.available!
    @rent.ended!

    redirect_to rents_url, notice: "Book was successfully returned."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent
      @rent = Rent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rent_params
      params.require(:rent).permit(:user_id, :book_id, :status)
    end
end
