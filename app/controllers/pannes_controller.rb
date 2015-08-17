class PannesController < ApplicationController
  before_action :set_panne, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pannes = Panne.all
    respond_with(@pannes)
  end

  def show
    respond_with(@panne)
  end

  def new
    @panne = Panne.new
    respond_with(@panne)
  end

  def edit
  end

  def create
    @panne = Panne.new(panne_params)
    @panne.save
    respond_with(@panne)
  end

  def update
    @panne.update(panne_params)
    respond_with(@panne)
  end

  def destroy
    @panne.destroy
    respond_with(@panne)
  end

  private
    def set_panne
      @panne = Panne.find(params[:id])
    end

    def panne_params
      params.require(:panne).permit(:name)
    end
end
