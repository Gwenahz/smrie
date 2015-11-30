class SecteursController < ApplicationController
  before_action :set_secteur, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :check_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    #@secteurs = Secteur.all
    #Secteur.where(:user_id => current_user.id)
    @secteurs = Secteur.where(:user_id => current_user.id)
    #@secteurid = Secteur.find(@secteurs)
    #redirect_to action: 'new'
    respond_with(@secteurs)
  end

  def show
    redirect_to action: 'index'
  end

  def new
    @secteur = Secteur.new
    respond_with(@secteur)
  end

  def edit
  end

  def create
    @secteur = Secteur.new(secteur_params)
    @secteur.user_id = current_user.id
    @secteur.save
    respond_with(@secteur)
  end

  def update
    @secteur.update(secteur_params)
    respond_with(@secteur)
  end

  def destroy
    @secteur.destroy
    respond_with(@secteur)
  end

  private
    def set_secteur
      @secteur = Secteur.find(params[:id])
    end

    def secteur_params
      params.require(:secteur).permit(:ville, :user_id)
    end

    #Vérifie que l'user connecté ne se connecte pas aux infos d'un autre user
    def check_user
      if current_user != @secteur.user
        redirect_to :new_info
      end
    end
end
