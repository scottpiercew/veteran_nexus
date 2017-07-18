require 'rails_helper'
describe Organization do
 it "has a valid factory" do
 build(:organization).should be_valid
 end
 it "is invalid without a name" do
  build(:organization, name: nil).should_not be_valid
 end
end
