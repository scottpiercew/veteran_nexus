require 'faker'
FactoryGirl.define do
  factory :organization do
    name {Faker::Company.name}
    org_type {Faker::Company.buzzword}
    photo_url {Faker::Company.logo}
    location {Faker::Address.city}
    facebook {Faker::Internet.domain_name}
    twitter {Faker::Internet.domain_name}
    instagram {Faker::Internet.domain_name}
    linkedin {Faker::Internet.domain_name}
    youtube {Faker::Internet.domain_name}
    web_url {Faker::Internet.domain_name}
  end
end
