require 'rails_helper'

RSpec.feature "Books", type: :feature do
  let(:user) { create(:user) }
  let(:book) { create(:book) }

  before(:each) do
    login_as(user)
    visit book_path(book)
  end

  context 'rent a book' do
    scenario "should be successful" do
      expect { click_button 'Rent this book' }.to change(book.rents, :count).by(1)
      expect(page).to have_content('Book was successfully rented.')
    end
  end

  context 'return a book' do
    scenario "should be successful" do
      click_button 'Rent this book'
      visit rents_path
      expect { click_button 'Return this book' }.to change(Rent.where(status: 'ongoing'), :count).by(-1)
      expect(page).to have_content('Book was successfully returned.')
    end
  end

end
