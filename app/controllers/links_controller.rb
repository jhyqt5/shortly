class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new   params[:link]
    if @link.save
      redirect_to link_path(@link)
    else
      render :new
    end
  end

  def show
    @link = Link.find params[:id]
  end

  def update
    @link = Link.find params[:id]
    if @link.update_attributes params[:link]
      redirect_to link_path(@link)
    else
      render :edit
    end
  end

  def edit
    @link = Link.find params[:id]
  end

  def destroy
    link = Link.find params[:id]
    link.destroy
    redirect_to root_path
  end

  def url
    long_url = Link.find_by_short_url(params[:short_url]).long_url
    redirect_to long_url
  end

end
