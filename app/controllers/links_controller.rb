class LinksController < ApplicationController

  def new
    @link = Link.new
    @link.save
  end

  def create
    @link.long_link = params[:link][:long_link]
  end
  
end 
