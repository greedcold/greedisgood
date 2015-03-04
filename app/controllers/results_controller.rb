class ResultsController < ApplicationController
  def index
    @search_results = Listing.search_everywhere(params[:query])
  end
end
