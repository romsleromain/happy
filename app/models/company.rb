class Company < ApplicationRecord
  validates :type, presence: true
  has_many :events
end
