class TalentValue < ApplicationRecord
  belongs_to :talent
  belongs_to :value
  has_many :talent_practices
end
