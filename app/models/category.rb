class Category < ApplicationRecord
  belongs_to :category, required: false
  has_many :categories
  has_many :topics

  scope :root, -> { where category: nil }
  scope :by_date, -> { order created_at: :desc }
  scope :by_name, -> { order name: :asc }
end
