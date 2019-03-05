class CompaniesController < ApplicationController
  # skip_before_action :authenticate_talent!, only: [:home, :connexion]

  def index
    @companies = Company.all
  end

  def follow
    @company = Company.find(params[:id])
    current_talent.follow(@company)
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.js
    end
  end

  def unfollow
    @company = Company.find(params[:id])
    current_talent.stop_following(@company)
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.js
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  private

  def redirection_path
    params[:source] == "feeds" ? feeds_index_path : companies_path
  end
  # def company_params
  #   params.require(:company).permit(:)
  # end

end
