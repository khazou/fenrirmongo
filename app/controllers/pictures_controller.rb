class PicturesController < ApplicationController
  
  before_filter :require_admin
  
  def new
    @picture = Picture.new
  end
  
  def create
    @picture = Picture.new(params[:picture])
    @picture.gallery = Gallery.find(params[:gallery_id])
    if @picture.save!
      flash[:notice] = "Photo uploadée avec succès"
      redirect_to @picture.gallery
    else
      flash[:error] = "Erreur lors de l'upload"
      render :action => :new
    end
  end
  
  def destroy
    @picture = Picture.find(params[:id])
    if @picture.destroy
      flash[:notice] = "Photo supprimée"
    else
      flash[:error] = "Erreur lors de la suppression"
    end
    redirect_to @picture.gallery
  end
end