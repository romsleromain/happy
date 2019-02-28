class CompaniesController < ApplicationController
  skip_before_action :authenticate_talent!, only: [:home, :connexion]

  def index
    @companies = Company.all
  end

end
