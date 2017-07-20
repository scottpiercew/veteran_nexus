require 'faker'
FactoryGirl.define do
  factory :comment do
    name {Faker::Ancient.hero}
    body {Faker::HowIMetYourMother.quote}
    organization_id {}
  end
  # trait :with_organization do
  #   let(:organization) { build(:organization) }
  #   organization_id { organization.id }
  # end
end
