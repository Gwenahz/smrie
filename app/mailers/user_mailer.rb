class UserMailer < ActionMailer::Base
  default from: "hello@lasmartphonerie.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://www.lasmartphonerie.com/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenue dans la Communauté de La Smartphonerie !')
  end

  def help_email(help)
    @help = help
    @url  = 'http://www.lasmartphonerie.com/users/sign_in'
    mail(to: 'hello@lasmartphonerie.com', subject: 'Nouvelle demande de réparation !')
  end

  def wcb_email(webcallback)
    @wcb = webcallback
    @url  = 'http://www.lasmartphonerie.com/webcallbacks/'
    mail(to: 'hello@lasmartphonerie.com', subject: '[WCB] Nouvelle demande de rappel !')
  end

  def order_email_team(order)
    @order = order
    @url  = 'http://www.lasmartphonerie.com/'
    mail(to: 'hello@lasmartphonerie.com', subject: 'NOUVELLE COMMANDE !')
  end
end
