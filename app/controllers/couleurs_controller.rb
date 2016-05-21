class CouleursController < ApplicationController
  before_action :set_couleur, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @couleurs = Couleur.all
    respond_with(@couleurs)
  end

  def show
    respond_with(@couleur)
  end

  def new
    @couleur = Couleur.new
    respond_with(@couleur)
  end

  def edit
  end

  def create
    @couleur = Couleur.new(couleur_params)
    @couleur.save
    respond_with(@couleur)
  end

  def update
    @couleur.update(couleur_params)
    respond_with(@couleur)
  end

  def destroy
    @couleur.destroy
    respond_with(@couleur)
  end

  private
    def set_couleur
      @couleur = Couleur.find(params[:id])
    end

    def couleur_params
      params.require(:couleur).permit(:couleur, :smartphone, :code)
    end
end
