class PagesController < ApplicationController
  skip_before_action :authenticate_talent!, only: [:home, :connexion, :sandbox]

  def home
  end

  def connexion
  end

  def sandbox
  end

end
