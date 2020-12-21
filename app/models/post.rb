class Post < ApplicationRecord
  validates :description, presence: true
  has_many :extended_times
end
