class RegistrationsController < Devise::RegistrationsController  
  
  
  def new
    @smartphones = Smartphone.all
    super
  end
  
end