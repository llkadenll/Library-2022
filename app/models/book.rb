class Book < ApplicationRecord
  has_many :rents
  has_many :users, through: :rents

  enum status: { available: 0, rented: 1 }

  validates :author, presence: true, length: { maximum: 50 }
  validates :title, presence: true, length: { maximum: 80 }
end
