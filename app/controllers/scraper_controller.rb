class ScraperController < ApplicationController
  def index
    Scraper.get_data(params[:url])
  end
end
