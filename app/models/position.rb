class Position < ApplicationRecord
  has_many :talents
  has_many :job_offers
  validates :name, presence: true
end
