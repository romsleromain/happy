class Company < ApplicationRecord
  validates :category, presence: true
  has_many :events, dependent: :destroy
  has_many :job_offers, dependent: :destroy
  has_many :company_values

  validates :logo, presence: true
  acts_as_followable

  mount_uploader :logo, LogoUploader
  mount_uploader :teampicture, TeampictureUploader
end
