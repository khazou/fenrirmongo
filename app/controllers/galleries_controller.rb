class GalleriesController < ApplicationController
  before_filter :require_admin, :only => [:new, :create, :edit, :update, :destroy]
  
  def index
    @galleries = Gallery.all
  end
  
  def show
    @gallery = Gallery.find(params[:id])
  end
  
  def new
    @gallery = Gallery.new
  end
  
  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save!
      flash[:notice] = "La galerie a été créée avec succès"
      redirect_to @gallery
    else
      flash[:error] = "Une erreur s'est produite lors de la création de la galerie"
      render :action => :new
    end
  end
end