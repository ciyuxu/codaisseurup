FactoryGirl.define do
  factory :event do
    name               { Faker::Lorem.sentence(1) }
    description        { Faker::Lorem.sentence(40) }
    location           { Faker::Address.city }
    price              { Faker::Commerce.price }
    capacity           30
    includes_food      false
    includes_drinks    true
    starts_at          {}
    starts_at          {}
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
