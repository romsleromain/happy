class Company < ApplicationRecord
  validates :type, presence: true
  has_many :events
  has_many :job_offers
  has_many :company_values
end
