class Comment < ApplicationRecord
belongs_to :organization
validates :name, presence: true
validates :body, presence: true
end
