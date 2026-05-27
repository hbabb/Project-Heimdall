class EmployeeProfile < ApplicationRecord
  belongs_to :user
  belongs_to :department
  belongs_to :office

  validates :user_id, uniqueness: true
  validates :title, presence: true
  validates :active, inclusion: { in: [ true, false ] }
end
