
require 'rails_helper'

describe Categorization do
  let(:category) { create(:category) }
  let(:organization) { create(:organization) }
  it "has a valid factory" do
    build(:categorization, category_id: category.id, organization_id: organization.id).should be_valid
  end
  it "is invalid without a category_id" do
    build(:categorization, category_id: nil).should_not be_valid
  end
end
