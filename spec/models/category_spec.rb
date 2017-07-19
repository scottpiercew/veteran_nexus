require 'rails_helper'

describe Category do
 it "has a valid factory" do
 build(:category).should be_valid
 end
 it "is invalid without a name" do
  build(:category, name: nil).should_not be_valid
 end
end
