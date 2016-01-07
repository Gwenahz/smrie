class CommandesController < ApplicationController
  before_action :set_commande, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @commandes = Commande.all
    respond_with(@commandes)
  end

  def show
    respond_with(@commande)
  end

  def new
    @commande = Commande.new
    respond_with(@commande)
  end

  def test
    @modele = params[:name]
    respond_to do |format|
      format.js 
      #format.html { redirect_to commandes_url, notice: 'Modele entré : '+@modele }
    end
  end

  def create
    @commande = Commande.new(commande_params)
    @commande.save
    respond_with(@commande)
  end

  def update
    @commande.update(commande_params)
    respond_with(@commande)
  end

  # DELETE /ponies/1
  # DELETE /ponies/1.json
  def destroy
    @commande.destroy
   
    respond_to do |format|
      format.html { redirect_to commandes_url, notice: 'Commande bien supprimée' }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  private
    def set_commande
      @commande = Commande.find(params[:id])
    end

    def commande_params
      params.require(:commande).permit(:modele, :panne, :prix)
    end
end
