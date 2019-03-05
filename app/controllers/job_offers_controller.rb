class JobOffersController < ApplicationController
  def index
    @job_offers = JobOffer.all
  end

  def destroy
    @job_offer = JobOffer.find(params[:id])
    @job_offer.destroy
  end

  def show
  end
end
