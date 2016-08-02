class Topic < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :category
  has_many :posts
end
