class Post < ApplicationRecord
  validates :description, presence: true
  has_many :extended_times

  def sum_extended_times
    extended_times.map(&:count).sum
  end
end
