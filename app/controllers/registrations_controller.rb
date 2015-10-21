class RegistrationsController < Devise::RegistrationsController  
  
def new
	@smartphones = Smartphone.all
    super
end

private

# Redirection de l'user vers les pannes 
def after_sign_up_path_for(resource)
      :new_reparation
end

def after_inactive_sign_up_path_for(resource)
      :new_reparation
end

  
end