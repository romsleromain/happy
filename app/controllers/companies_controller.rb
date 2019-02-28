class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def follow
    @company = Company.find(params[:id])
    current_talent.follow(@company)
    redirect_to companies_path
  end

  def unfollow
    @company = Company.find(params[:id])
    current_talent.stop_following(@company)
    redirect_to companies_path
  end

  def show
  end

  # private

  # def company_params
  #   params.require(:company).permit(:)
  # end

end
