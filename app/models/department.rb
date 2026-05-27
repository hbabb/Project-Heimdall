class Department < ApplicationRecord
  has_many :employee_profiles

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :active, inclusion: { in: [ true, false ] }
end
