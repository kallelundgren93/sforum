class Topic < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :posts

  scope :by_date, -> { order created_at: :desc }
end
