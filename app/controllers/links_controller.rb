class LinksController < ApplicationController

  def new
    @short_link = Link.new
  end

  def create
    @short_link = Link.new(link_params)
    if @short_link.save
      redirect_to new_link_url
    else
      render :new
    end
  end

  def show
    @short_link = Link.find(params[:id])
    redirect_to @short_link.link
  end

  private 
    def link_params
      params.require(:link).permit(:link)
    end

end 
