class LinksController < ApplicationController

  def new
    @short_link = Link.new
  end

  def create
    @short_link = Link.new(link_params)
    #raise params.inspect

    if @short_link.save
      @link_id = Link.find(link_params[:id])
      redirect_to @short_link.link
    else
      render :new
    end
  end

  def show
    @short_link = Link.find(link_params[:id])
    redirect_to @short_link.link
  end

  private 
    def link_params
      params.require(:link).permit(:link,:id)
    end

end 
