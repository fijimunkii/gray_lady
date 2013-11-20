class ScraperController < ApplicationController
  def index
  end

  def get_links
    scraper = Scraper.new(params[:url])
    links = scraper.get_hrefs
    render json: links
  end

  def get_images
    scraper = Scraper.new(params[:url])
    images = scraper.get_images
    render json: images
  end
end
