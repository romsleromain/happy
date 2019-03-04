# Preview all emails at http://localhost:3000/rails/mailers/talent_mailer
class TalentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/talent_mailer/welcome
  def welcome
    talent = Talent.first
    TalentMailer.welcome(talent)
  end

end
