class CompanyValue < ApplicationRecord
  belongs_to :company
  belongs_to :value
  has_many :company_practices
end
