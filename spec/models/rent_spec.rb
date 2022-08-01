require 'rails_helper'

RSpec.describe Rent, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:book) }
  end

  describe 'enums' do
    it { should define_enum_for(:status).with_values(ongoing: 0, ended: 1) }
  end
end
