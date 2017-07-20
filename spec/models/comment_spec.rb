require 'rails_helper'

describe Comment do
  let(:organization) { build(:organization, id: 1) }
  let(:comment) { build(:comment, id: 1, organization: organization) }
  it "has a valid factory" do
    comment.should be_valid
  end
  it "is invalid without a name" do
    build(:comment, name: nil).should_not be_valid
  end
  it "is invalid without a body" do
    build(:comment, body: nil).should_not be_valid
  end
end
