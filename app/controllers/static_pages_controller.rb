class StaticPagesController < ApplicationController
  require "flickr"

  def index
    @flickr = Flickr.new Rails.application.credentials.dig(:flickr, :key), Rails.application.credentials.dig(:flickr, :secret)
    @photos = @flickr.photos.getRecent
    @user_id = params[:user_id]
    if @user_id
      @imaggios = @flickr.photos.search(user_id: @user_id)
    end
  end

  def create
    redirect_to root_path
  end
end
