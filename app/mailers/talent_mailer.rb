class TalentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.talent_mailer.welcome.subject
  #
  def welcome(talent)
    @talent = talent
    @greeting = "#{@talent.first_name}, welcome to Happy, the platform to find your next move !"

    mail to: @talent.email, subject: "You've subscribed to Happy !"
  end
end
