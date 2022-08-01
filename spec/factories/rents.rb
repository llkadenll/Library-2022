FactoryBot.define do
  factory :rent do
    user { nil }
    book { nil }
    status { :ongoing }
  end
end
