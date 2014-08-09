class User < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :email, uniqueness: true, format: { with: /\A[^@]+@[^@\.]+\.[^@\.0-9]\z/}
  has_many :posts
end