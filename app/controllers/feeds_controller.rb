class FeedsController < ApplicationController
  def index
    @feed = Company.all
  end
end
