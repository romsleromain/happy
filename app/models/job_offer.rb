class JobOffer < ApplicationRecord
  belongs_to :company
  belongs_to :position
  validates :name, :description, presence: true

end
