class Office < ApplicationRecord
  has_many :employee_profiles

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  validates :state, presence: true, length: { is: 2 }

  validates :active, inclusion: { in: [ true, false ] }
end
