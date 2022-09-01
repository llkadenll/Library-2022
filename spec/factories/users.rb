FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@email.com" }
    password { 'secret' }
    
    factory :admin do
      role { :admin }
    end
  end
end
