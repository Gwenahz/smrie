class SecteursController < ApplicationController
  before_action :set_secteur, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @secteurs = Secteur.all
    respond_with(@secteurs)
  end

  def show
    respond_with(@secteur)
  end

  def new
    @secteur = Secteur.new
    respond_with(@secteur)
  end

  def edit
  end

  def create
    @secteur = Secteur.new(secteur_params)
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
end
