class Company < ApplicationRecord
  validates :category, presence: true
  has_many :events, dependent: :destroy
  has_many :job_offers, dependent: :destroy
  has_many :company_values
  has_many :values, through: :company_values

  validates :logo, presence: true
  acts_as_followable

  mount_uploader :logo, LogoUploader
  mount_uploader :teampicture, TeampictureUploader

  def rating_score(user)
    company_value_ids = values.map &:id
    user_value_ids = user.values.map &:id
    score = 0
    user_value_ids.each do |user_value_id|
      score += 0.3333334 if company_value_ids.include?(user_value_id)
    end
    s_percent = score * 100
    s_percent.round(2)
  end
end
