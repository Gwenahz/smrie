class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  respond_to :html

  def index
    @stocks = Stock.all
    #@smartphone = Smartphone.where(:id => :id_smartphone)
    respond_with(@stocks)
  end

  def show
    respond_with(@stock)
  end

  def new
    @stock = Stock.new
    respond_with(@stock)
  end

  def edit
  end

  def prix
    @mon_prix = params[:prix]
    @stock.update(@stock)
  end

  def create
    @stock = Stock.new(stock_params)
    @stock.save
    respond_with(@stock)
  end

  def update
    @stock.update(stock_params)
    #flash[:notice] = "GOOD"
    respond_with(@stock)
  end

  def destroy
    @stock.destroy
    respond_with(@stock)
  end

  private
    def set_stock
      @stock = Stock.find(params[:id])
    end

    def stock_params
      params.require(:stock).permit(:id_smartphone, :id_panne, :prix, :stock, :couleur)
    end
end
