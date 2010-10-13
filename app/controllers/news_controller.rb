class NewsController < ApplicationController
  before_filter :require_admin, :only => [:new, :create, :edit, :update, :destroy]
  
  def show
    @news = News.find(params[:id])
  end
  
  def new
    @news = News.new
  end
  
  def create
    begin
      @news = News.new(params[:news])
      @news.posted_at = Time.now
      @news.save!
      redirect_to news_path(@news)
    rescue
      flash[:error] = "Une erreur a eu lieu lors de l'ajout de votre commentaire !"
      render :action => :new
    end
  end

end