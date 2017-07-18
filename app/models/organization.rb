class Organization < ApplicationRecord
has_many :comments, dependent: :destroy
end
