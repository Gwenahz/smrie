class WebcallbacksController < ApplicationController
  before_action :set_webcallback, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy]

  respond_to :html

  def index
    @webcallbacks = Webcallback.all
    respond_with(@webcallbacks)
  end

  def show
    respond_with(@webcallback)
  end

  def new
    @webcallback = Webcallback.new
    respond_with(@webcallback)
  end

  def edit
  end

  def create
    @webcallback = Webcallback.new(webcallback_params)
    @webcallback.save
    if @webcallback.save
      # respond_with(@webcallback)
      # Sends email to user when user is created.
      UserMailer.wcb_email(@webcallback).deliver
    else 
      flash[:error] = "Oups ! Quelque chose s'est mal passé"
      redirect_to root_path
    end
  end

  def update
    @webcallback.update(webcallback_params)
    respond_with(@webcallback)
  end

  def destroy
    @webcallback.destroy
    respond_with(@webcallback)
  end

  private
    def set_webcallback
      @webcallback = Webcallback.find(params[:id])
    end

    def webcallback_params
      params.require(:webcallback).permit(:numtel, :modele, :panne, :cp, :email, :sms)
    end

    #Vérifie que l'user connecté ne se connecte pas aux infos d'un autre user
    def check_admin
      before_action :authenticate_admin!
    end
end
