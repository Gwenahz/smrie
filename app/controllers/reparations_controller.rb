class ReparationsController < ApplicationController
  before_action :set_reparation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reparations = Reparation.where("id_user = ?", current_user.id).all
    respond_with(@reparations)
  end

  def show
    respond_with(@reparation)
  end

  def new
    #Vérification de l'authentification de l'user sinon redirection vers :root
    if user_signed_in?
      if current_user.idphones?
        @panne = Panne.all
      
        @reparation = Reparation.new
        respond_with(@reparation)
      else
        redirect_to :edit_user_registration
      end
      else
      redirect_to :new_user_session
    end
  end

  def edit
  end

  def create
    current_user.idphones.each do |phone|
    Reparation.new(reparation_params).id_panne.each do |panne|
      @reparation = Reparation.new(reparation_params)
      @reparation.id_user = current_user.id
      @reparation.id_smartphone = phone
      @reparation.id_panne = panne
      @reparation.save
    end
  end
    respond_with(@reparation)
  end

  def update
    @reparation.update(reparation_params)
    respond_with(@reparation)
  end

  def destroy
    @reparation.destroy
    respond_with(@reparation)
  end

  private
    def set_reparation
      @reparation = Reparation.find(params[:id])
    end

    def reparation_params
      params.require(:reparation).permit({ id_panne: [] }, :price)
    end
end