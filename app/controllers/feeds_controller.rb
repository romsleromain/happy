class FeedsController < ApplicationController
  def index
    @feed = Company.all
  end

  def follow
    @company = Company.find(params[:id])
    current_talent.follow(@company)
    redirect_to feeds_index_path
  end

  def unfollow
    @company = Company.find(params[:id])
    current_talent.stop_following(@company)
    redirect_to feeds_index_path
  end

end
