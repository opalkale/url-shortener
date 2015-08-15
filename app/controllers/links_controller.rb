class LinksController < ApplicationController

  def new
    @short_link = Link.new
  end

  def create
    @short_link = Link.new(params[:link])
    if @short_link.save
      flash[:short_id] = @short_link.id

      redirect_to new_link_url
    else
      render action: :new
    end
  end

  def show
    @short_link = Link.find(params[:id])
    redirect_to @short_link.link
  end
  
end 
