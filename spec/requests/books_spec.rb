require 'rails_helper'

RSpec.describe "Books", type: :request do
  let(:user) { build(:user) }
  let(:book) { create(:book) }

  let(:valid_params) { { book: { author: 'author', title: 'title', status: 'available' } } }
  let(:invalid_params) { { book: { author: '', title: '', status: 'available' } } }

  describe "GET /index" do
    it "returns http success" do
      get books_path
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    context "when user not signed in" do
      it "redirects to sign in page" do
        get new_book_url
        expect(response).to redirect_to(new_user_session_url)
      end
    end

    context "when user signed in" do
      before { sign_in user }
      it "returns http success" do
        get new_book_url
        expect(response).to be_successful
      end
    end
  end

  describe "Get /edit" do
    context "when user not signed in" do
      it "redirects to sign in page" do
        get edit_book_url(book)
        expect(response).to redirect_to(new_user_session_url)
      end
    end

    context "when user signed in" do
      before { sign_in user }
      it "returns http success" do
        get edit_book_url(book)
        expect(response).to be_successful
      end
    end
  end

  describe "POST /create" do
    before { sign_in user }

    context "with valid parameters" do
      it "increments book count by 1" do
        expect{post books_url, params: valid_params}.to change(Book, :count).by(1)
      end
    end

    context "with invalid parameters" do
      it "returns 422 unprocessable entity" do
        post books_url, params: invalid_params
        expect(response.status).to eq(422)
      end
    end
  end

  describe "PATCH #update" do
    before { sign_in user }

    context "with valid parameters" do
      it "redirects to book url" do
        patch book_url(book), params: valid_params
        expect(response).to redirect_to(book_url(book))
      end
    end

    context "with invalid parameters" do
      it "returns 422 unprocessable entity" do
        patch book_url(book), params: invalid_params
        expect(response.status).to eq(422)
      end
    end
  end

  describe "DELETE /destroy" do
    before { sign_in user }

    it "redirects to books url" do
      delete book_url(book)
      expect(response).to redirect_to(books_url)
    end

  end

end
