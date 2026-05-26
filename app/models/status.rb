class Status < ApplicationRecord
  scope :ordered, -> { order(:sort_order) }

  validates :sort_order, presence: true, uniqueness: true
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :active, inclusion: { in: [true, false] }
end
