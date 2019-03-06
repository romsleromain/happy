class FeedsController < ApplicationController
  def index
    @feed = Company.all.sort { |company| -company.rating_score(current_talent) }

    @talent_position = current_talent.position
    @job_offers = JobOffer.where(position_id: @talent_position)
  end
end
