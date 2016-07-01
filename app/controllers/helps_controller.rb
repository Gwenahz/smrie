class HelpsController < ApplicationController
  before_action :set_help, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy]

  respond_to :html

  def index
    @helps = Help.all
    respond_with(@helps)
  end

  def show
    respond_with(@help)
  end

  def new
    @help = Help.new
    respond_with(@help)
  end

  def edit
  end

  def create
    @help = Help.new(help_params)
    @help.save
    respond_to do |format|
      format.html { 
        if @help.save
          if @help.typeform == "site_yield"

            #render "pages/devis", :locals => {:helpid => @help.id}
            render "pages/ou", :locals => {:helpid => @help.id}
          else
            if @help.typeform == "siteoneprice"
              redirect_to pages_validation_path 
              # Sends email to user when user is created.
              UserMailer.help_email(@help).deliver
            else
              if @help.typeform == "borne"
                redirect_to pages_validation_borne_path 
                # Sends email to user when user is created.
                UserMailer.help_email(@help).deliver
              else
                if @help.typeform == "autre"
                  redirect_to pages_validation_borne_path 
                  # Sends email to user when user is created.
                  UserMailer.help_email(@help).deliver
                end
              end
            end
          end
        else 
          flash[:error] = "Oups ! Quelque chose s'est mal passé"
          redirect_to root_path
        end
      }
    end
  end

  def choix_lieu
    @prix = params[:prix]
    @idstock = params[:idstock]
    @madate = params[:madate]
    @heure = params[:heure]
    @modele = params[:modele]
    @panne = params[:panne]
    @commentaire = params[:commentaire]
    @heure = params[:heure]
  end

  def recap
    @prix = params[:prix]
    @idstock = params[:idstock]
    @madate = params[:madate]
    @heure = params[:heure]
    @modele = params[:modele]
    @panne = params[:panne]
    @commentaire = params[:commentaire]
    @heure = params[:heure]
    @idsmartphone = Stock.find_by(id: @idstock).id_smartphone
    @idpanne = Stock.find_by(id: @idstock).id_panne
    @smartphone = Smartphone.find_by(id: @idsmartphone)
  end

  def choix_creneau
    @stock = Stock.find(params[:stock])
  end

  def quand
    @stock = Stock.find(params[:stock])
  end

  def update
    @help.update(help_params)
    respond_with(@help)
  end

  def destroy
    @help.destroy
    respond_with(@help)
  end

  private
    def set_help
      @help = Help.find(params[:id])
    end

    def help_params
      params.require(:help).permit(:nom, :prenom, :cp, :modele, :panne, :mail, :numtel, :ville, :adresse, :date, :heure, :compladresse, :entreprise, :typeform, :commentaire, :idstock, :prix, :promocode)
    end

    #Vérifie que l'user connecté ne se connecte pas aux infos d'un autre user
    def check_admin
      before_action :authenticate_admin!
    end
end
