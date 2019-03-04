class CompaniesController < ApplicationController
  # skip_before_action :authenticate_talent!, only: [:home, :connexion]

  def index
    @companies = Company.all
  end

  def follow
    @company = Company.find(params[:id])
    current_talent.follow(@company)
    redirect_back(fallback_location: root_path)
      # respond_to do |format|
      #   format.html { redirect_back(fallback_location: root_path) }
      #   format.js
      # end
  end

  def unfollow
    @company = Company.find(params[:id])
    current_talent.stop_following(@company)
    # redirect_to companies_path
    redirect_back(fallback_location: root_path)
  end

  def show
  end

  private

  # def company_params
  #   params.require(:company).permit(:)
  # end

end
