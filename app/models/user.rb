class User < ApplicationRecord
    enum role: [ :user, :admin ]
    has_many :posts
    has_many :topics
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
