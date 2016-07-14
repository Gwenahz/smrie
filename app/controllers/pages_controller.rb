class PagesController < ApplicationController

  respond_to :html, :js

  def index
  end
  
  def about
  end

  def landingprix
    @modele = params[:modele]
    @panne = params[:panne]
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
  end

  def prix
  	@modele = params[:modele]
  	@panne = params[:panne]
  	@smartphone = Smartphone.find_by(modele: @modele)
  	@ma_panne = Panne.find_by(name: @panne)
  	@id_smartphone = @smartphone.id
  	@id_ma_panne = @ma_panne.id
  	@stock = Stock.find_by(id_smartphone: @id_smartphone, id_panne: @id_ma_panne)
    #respond_to :js
    #respond_to do |format|
      #format.js 
    #end
  end

  def show_lieu
    @modele = params[:modele]
    @panne = params[:panne]
    @smartphone = Smartphone.find_by(modele: @modele)
    @ma_panne = Panne.find_by(name: @panne)
    @id_smartphone = @smartphone.id
    @id_ma_panne = @ma_panne.id
    @stock = Stock.find_by(id_smartphone: @id_smartphone, id_panne: @id_ma_panne)
  end

  def show_date
    @adresse = params[:adresse]
    @cp = params[:cp]
    @ville = params[:ville]
  end

  def show_devis
    @date = params[:date]
    @heure = params[:heure]
  end

  def show_modal
  end

  def devis
    @helpid = params[:id]
    @helpidstock = Help.find(@helpid).idstock
    @majparam = params[:maj].to_i
    @stock_id = @helpidstock
    @stock = Stock.find(@stock_id)
    @id_smartphone = Stock.find(@stock_id).id_smartphone
    @id_panne = Stock.find(@stock_id).id_panne
    @smartphone = Smartphone.find(@id_smartphone)
    @panne = Panne.find(@id_panne)
  end

  def diagnostic
    @stockparam = params[:stock]
    @stock = Stock.find(@stockparam)
    @stock_id = @stock.id
    @id_smartphone = Stock.find(@stock_id).id_smartphone
    @id_panne = Stock.find(@stock_id).id_panne
    @smartphone = Smartphone.find(@id_smartphone)
    @panne = Panne.find(@id_panne)
  end

  def test
  	@letest = "Montest"
  end

  def choix_prix
    @stock = Stock.find(params[:stock])
  end

  def contact
  end
end
