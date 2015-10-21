class DisponibilitesController < ApplicationController
  before_action :set_disponibilite, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :check_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    #@disponibilites = Disponibilite.all
    Disponibilite.where(:user_id => current_user.id)
    #Récupère les dispos de l'user connecté
    @dispos = Disponibilite.where(:user_id => current_user.id)
    #Récupère l'id des dispos
    @dispoid = Disponibilite.find(@dispos)
    redirect_to action: 'edit', id: @dispoid
    #respond_with(@disponibilites)
  end

  def show
    #@disponibilites = Disponibilite.all
    Disponibilite.where(:user_id => current_user.id)
    #Récupère les dispos de l'user connecté
    @dispos = Disponibilite.where(:user_id => current_user.id)
    #Récupère l'id des dispos
    @dispoid = Disponibilite.find(@dispos)
    redirect_to action: 'edit', id: @dispoid
    #respond_with(@disponibilites)
  end

  def new
    #Vérifie que des dispos pour un user n'ont pas déjà été créées
    if Disponibilite.where(:user_id => current_user.id).blank?
      @disponibilite = Disponibilite.new
      respond_with(@disponibilite)
    else
      #Récupère les dispos de l'user connecté
      @dispos = Disponibilite.where(:user_id => current_user.id)

      #Récupère l'id des dispos
      @dispoid = Disponibilite.find(@dispos)
      redirect_to action: 'edit', id: @dispoid
      #redirect_to action: 'index'
    end
  end

  def edit
  end

  def create
    @disponibilite = Disponibilite.new(disponibilite_params)
    @disponibilite.user_id = current_user.id
    @disponibilite.save
    #Récupère les dispos de l'user connecté
    @dispos = Disponibilite.where(:user_id => current_user.id)
    #Récupère l'id des dispos
    @dispoid = Disponibilite.find(@dispos)
    redirect_to :pages_bienvenue
    #respond_with(@disponibilite)
  end

  def update
    @disponibilite.update(disponibilite_params)
    #Récupère les dispos de l'user connecté
    @dispos = Disponibilite.where(:user_id => current_user.id)
    #Récupère l'id des dispos
    @dispoid = Disponibilite.find(@dispos)
    redirect_to :pages_reparations, id: @dispoid, :notice => 'Vos disponibilités ont bien été modifiées'
    
    #respond_with(@disponibilite)
  end

  def destroy
    @disponibilite.destroy
    respond_with(@disponibilite)
  end

  private
    def set_disponibilite
      @disponibilite = Disponibilite.find(params[:id])
    end

    def disponibilite_params
      params.require(:disponibilite).permit(:amlundi, :pmlundi, :slundi, :ammardi, :pmmardi, :smardi, :ammercredi, :pmmercredi, :smercredi, :amjeudi, :pmjeudi, :sjeudi, :amvendredi, :pmvendredi, :svendredi, :amsamedi, :pmsamedi, :ssamedi, :amdimanche, :pmdimanche, :sdimanche)
    end

    #Vérifie que l'user connecté ne se connecte pas aux infos d'un autre user
    def check_user
      if current_user != @disponibilite.user
        redirect_to :new_disponibilite
        #flash.now[:notice] = 'Message sent!'
      end
    end
end
