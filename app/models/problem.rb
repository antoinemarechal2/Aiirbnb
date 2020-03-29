class Problem < ApplicationRecord
  belongs_to :user

  validates :problem_type, presence: true
  validates :category, presence: true
  validates :summary, presence: true, length: {maximum: 1500}

  has_many:resolutions
end
