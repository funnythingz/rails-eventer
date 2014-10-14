require 'faker'

FactoryGirl.define do
  factory :event do
    owner
    name { Faker::Lorem.sentence }
    place { Faker::Address.city }
    content { Faker::Lorem.paragraph }
    start_time { rand(1..3).days.from_now }
    end_time { start_time + rand(1..30).hours }
  end
end