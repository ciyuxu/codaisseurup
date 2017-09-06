FactoryGirl.define do
  factory :event do
    name               { Faker::Lorem.sentence(1) }
    description        { Faker::Lorem.sentence(40) }
    location           { Faker::Address.city }
    price              { Faker::Commerce.price }
    capacity           30
    includes_food      false
    includes_drinks    true
    starts_at          { Faker::Time.between(2.days.ago, 1.day.ago) }
    ends_at            { Faker::Time.between(2.days.ago, 1.day.ago) }
    user               { build(:user) }


    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
