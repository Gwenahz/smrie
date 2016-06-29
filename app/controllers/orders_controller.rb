class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy, :new_creneau, :new_adresse]
  before_action :authenticate_admin!, only: [:new, :index, :show, :edit, :destroy]


  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def prix
    @demande = params[:demande]
    @help = Help.find_by(nom: @demande)
    @panne = @help.panne
    @modele = @help.modele

    @smartphone = Smartphone.find_by(modele: @modele)
    @ma_panne = Panne.find_by(name: @panne)
    @id_smartphone = @smartphone.id
    @id_ma_panne = @ma_panne.id
    @stock = Stock.find_by(id_smartphone: @id_smartphone, id_panne: @id_ma_panne)
    #respond_to do |format|
      #format.js 
    #end
  end

  def show
    respond_with(@order)
  end

  def new
    @order = Order.new
    respond_with(@order)
  end

  def new_creneau
  end

  def new_adresse
  end

  def devis
    @order = Order.find(params[:id])
    @smartphone = Smartphone.find_by(modele: @order.modele)
    respond_with(@order)
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.code_reparation = [*('A'..'Z'),*('0'..'9')].shuffle[0,8].join
    @order.save
    #respond_with(@order)
    redirect_to pages_validation_path
    UserMailer.order_email_team(@order).deliver
  end

  def update
    @order.update(order_params)
    if @order.adresse.blank?
      redirect_to action: 'new_adresse', id: @order
    else
      redirect_to pages_validation_path
    end
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:marque, :modele, :panne, :couleur, :prix, :date_reparation, :heure_reparation, :bureau, :entreprise, :adresse, :adresse2, :cp, :ville, :prenom, :nom, :numtel, :email, :code_reparation, :statut, :paye, :reparateur, :commentaire, :demande_id, :note, :promocode, :date)
    end

    #Vérifie que l'user connecté ne se connecte pas aux infos d'un autre user
    def check_admin
      before_action :authenticate_admin!
    end
end
