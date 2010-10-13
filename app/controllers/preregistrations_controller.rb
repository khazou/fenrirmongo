class PreregistrationsController < ApplicationController
  before_filter :require_user
  before_filter :require_admin, :only => [:index, :destroy, :validate, :add_payment]
  
  def index
    @preregistrations = Preregistration.all
  end
  
  def new
    @preregistration = Preregistration.new
  end
  
  def create
    @preregistration = Preregistration.new(params[:preregistration])
    if @preregistration.save!
      flash[:notice] = "Vous vous êtes correctement préinscrit. Une réponse vous sera donnée dans les plus brefs délais."
      redirect_to @preregistration
    else
      flash[:error] = "Une erreur s'est produite lors de votre préinscription. Merci de bien renseigner tous les champs du formulaire"
      render :action => :new
  end
  
  def edit
    @preregistration = Preregistration.find(params[:id])
  end
  
  def update
    @preregistration = Preregistration.find(params[:id])
  end
  
  def destroy
    @preregistration = Preregistration.find(params[:id])
  end
  
  def validate
    @preregistration = Preregistration.find(params[:id])
  end
  
  def add_payment
    @preregistration = Preregistration.find(params[:id])
  end
end