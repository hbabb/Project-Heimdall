class LicenseJurisdiction < ApplicationRecord
  validates :name, presence: true
  validates :jurisdiction_type, presence: true
  validates :state, presence: true
  validates :business_license_required, inclusion: { in: [ true, false ] }
  validates :active, inclusion: { in: [ true, false ] }

  validates :name,
            uniqueness: {
              scope: [ :state, :jurisdiction_type ],
              message: "must be unique within state and jurisdiction type"
            }
end
