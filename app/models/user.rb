class User < ApplicationRecord
  has_one :employee_profile

  before_validation :normalize_email

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :active, inclusion: { in: [ true, false ] }

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def normalize_email
    self.email = email.strip.downcase
  end
end
