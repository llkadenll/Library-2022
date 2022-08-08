class RentsController < ApplicationController
  before_action :authenticate_user!, only: %i[ index create ]
  before_action :set_rent, only: %i[ return ]

  # GET /rents or /rents.json
  def index
    @pagy, @rents = pagy(Rent.where(user: current_user).order(:status, updated_at: :desc))
  end

  def create
    @book = Book.find(params[:book_id])
    book_rented = RentsManager::BookRenter.call(@book, current_user)

    if book_rented
      redirect_to books_url, notice: "Book was successfully rented."
    else
      redirect_to books_url, alert: "You cannot rent this book."
    end
  end

  def return
    book_returned = RentsManager::BookReturner.call(@rent)

    if book_returned
      redirect_to rents_url, notice: "Book was successfully returned."
    else
      redirect_to rents_url, alert: "You cannot return this book."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent
      @rent = Rent.where(user: current_user).find(params[:id])
    end
end
