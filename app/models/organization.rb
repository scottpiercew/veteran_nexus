class Organization < ApplicationRecord
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :comments, dependent: :destroy
  validates :name, presence: true
end
