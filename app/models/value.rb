class Value < ApplicationRecord
  has_many :talent_values
  has_many :company_values
  validates :name, presence: true
  mount_uploader :icone, IconeUploader
end
