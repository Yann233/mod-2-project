class User < ApplicationRecord
  has_many :reviews
  has_many :movies, through: :reviews
  validates :username, presence: true, uniqueness: true
  has_secure_password

  def review_count
    self.reviews.count
  end
end
