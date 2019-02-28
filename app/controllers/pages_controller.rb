class PagesController < ApplicationController
  skip_before_action :authenticate_talent!, only: [:home, :connexion, :sandbox]

  def home
  end

  def connexion
  end

<<<<<<< HEAD
  def feed
=======
  def sandbox
>>>>>>> 90b7efdd7ad0aac85dca1c1295dcd77202b29526
  end

end
