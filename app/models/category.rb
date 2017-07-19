class Category < ApplicationRecord
  has_many :categorizations
  has_many :organizations, through: :categorizations
  validates :name, presence: true
end
