class Value < ApplicationRecord
  has_many :talent_values
  has_many :company_values
  validates :name, :description, presence: true
end
