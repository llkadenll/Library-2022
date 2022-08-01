FactoryBot.define do
  factory :book do
    author { "MyString" }
    title { "MyString" }
    description { "MyText" }
    status { :available }
  end
end
