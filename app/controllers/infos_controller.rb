class InfosController < ApplicationController
  before_action :set_info, only: [:show, :edit, :update]
  before_action :authenticate_user!
  before_filter :check_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    #@infos = Info.all
    @infos = Info.where(:user_id => current_user.id)
    respond_with(@infos)
  end

  def show
    respond_with(@info)
  end

  def new
    if Info.where(:user_id => current_user.id).blank?
      @info = Info.new
      respond_with(@info)
    else
      @infos = Info.where(:user_id => current_user.id)
      @infoid = Info.find(@infos)
      redirect_to action: 'show', id: @infoid
      #redirect_to action: 'index'
    end
  end

  def edit
  end

  def create
    @info = Info.new(info_params)
    @info.user_id = current_user.id
    #@user = User.find(params[:user_id])
    @info.save
    respond_with(@info)
  end

  def update
    @info.update(info_params)
    respond_with(@info)
  end

  private
    def set_info
        @info = Info.find(params[:id])
    end

    def info_params
      params.require(:info).permit(:nom, :prenom, :adresse, :cp, :ville)
    end

    def check_user
      if current_user != @info.user
        redirect_to action:'new', alert: "Désolé, ce ne sont pas vos informations."
      end
    end
end
