class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  scope :by_date, -> { order created_at: :desc }

end
