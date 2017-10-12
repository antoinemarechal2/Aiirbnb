class Resolution < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem
  
  enum status: [ :created, :accepted, :refused ]
end
