class PagesController < ApplicationController
  skip_before_action :authenticate_talent!, only: [:home, :connexion]

  def home
  end

  def connexion
  end

end
