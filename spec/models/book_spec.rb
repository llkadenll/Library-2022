require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'associations' do
    it { should have_many(:rents) }
    it { should have_many(:users) }
  end

  describe 'validations' do
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:author).is_at_most(50) }
    it { should validate_length_of(:title).is_at_most(80) }
  end

end
