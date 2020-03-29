class Resolution < ApplicationRecord
  belongs_to :user
  belongs_to :problem

  enum status: [ :created, :accepted, :refused ]
end
