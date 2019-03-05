class FeedsController < ApplicationController
  def index
    @feed = Company.all.sort { |company| -company.rating_score(current_talent) }
  end
end
