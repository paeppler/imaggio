class StaticPagesController < ApplicationController
  def index
    @flickr = Flickr.new Rails.application.credentials.dig(:flickr, :key), Rails.application.credentials.dig(:flickr, :secret)
  end
end
