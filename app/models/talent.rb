class Talent < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :talent_values
  has_many :values, through: :talent_values
  belongs_to :position, optional: true
  acts_as_follower
  # after_create :send_welcome_email

  # private

  # def send_welcome_email
  #   TalentMailer.welcome(self).deliver_now
  # end

end
