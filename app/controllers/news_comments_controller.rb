class NewsCommentsController < ApplicationController
  before_filter :find_it, :only => [:validate, :destroy]
  before_filter :require_user
  before_filter :require_admin, :only => [:validate]
  
  def new
    @comment = NewsComment.new
  end
  
  def create
    @comment = NewsComment.new(params[:news_comment])
    @comment.news = News.find(params[:news_id])
    @comment.posted_at = Time.now
    @comment.user = current_user
    if @comment.save!
      flash[:notice] = "Le commentaire a bien été enregistré. Il sera validé dans les plus brefs délais par un administrateur"
      redirect_to news_path(@comment.news)
    else
      flash[:error] = "Une erreur s'est produite lors de l'enregistrement du commentaire"
      render :action => :new
    end
  end
  
  def validate
    
  end
  
  def destroy
    
  end
  
  protected
  def find_it
    @comment = NewsComment.find(params[:id])
  end
end