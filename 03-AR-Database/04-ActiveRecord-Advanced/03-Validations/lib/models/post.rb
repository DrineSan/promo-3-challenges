class Post < ActiveRecord::Base
  validates :name, :date, :source_url, :rating, :user, presence: true
  validates :name, uniqueness: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  belongs_to :user
end