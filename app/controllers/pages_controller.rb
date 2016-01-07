class PagesController < ApplicationController

  def index
  end
  
  def about
  end

  def prix
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

  def test
  	@letest = "Montest"
  end

  def contact
  end
end
