class HelpsController < ApplicationController
  before_action :set_help, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy]

  respond_to :html

  def index
    @helps = Help.all
    respond_with(@helps)
  end

  def show
    respond_with(@help)
  end

  def new
    @help = Help.new
    respond_with(@help)
  end

  def edit
  end

  def create
    @help = Help.new(help_params)
    @help.save
    respond_to do |format|
      format.html { 
        if @help.save
          # Sends email to user when user is created.
          UserMailer.help_email(@user).deliver

          redirect_to pages_validation_path 
        else 
          flash[:error] = "Oups ! Quelque chose s'est mal passé"
          redirect_to root_path
        end
      }
    end
  end

  def update
    @help.update(help_params)
    respond_with(@help)
  end

  def destroy
    @help.destroy
    respond_with(@help)
  end

  private
    def set_help
      @help = Help.find(params[:id])
    end

    def help_params
      params.require(:help).permit(:nom, :prenom, :cp, :modele, :panne, :mail, :numtel)
    end

    #Vérifie que l'user connecté ne se connecte pas aux infos d'un autre user
    def check_admin
      before_action :authenticate_admin!
    end
end
