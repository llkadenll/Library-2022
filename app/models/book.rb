class Book < ApplicationRecord
  has_many :rents, dependent: :destroy
  has_many :users, through: :rents

  validates :author, presence: true, length: { maximum: 50 }
  validates :title, presence: true, length: { maximum: 80 }
end
