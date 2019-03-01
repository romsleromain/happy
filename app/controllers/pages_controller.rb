class PagesController < ApplicationController
  skip_before_action :authenticate_talent!, only: [:home, :connexion, :sandbox, :feed]

  def home
  end

  def connexion
  end

  def feed
  end

  def sandbox
  end
end
