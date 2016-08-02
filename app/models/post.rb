class Post < ApplicationRecord
  before_action :authenticate_member!
  belongs_to :user
  belongs_to :topic
end
