class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum status: { ongoing: 0, ended: 1 }
end
