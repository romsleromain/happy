class Value < ApplicationRecord

  validates :name, :description, presence: true
end
