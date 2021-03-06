class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do
    render "errors/forbidden", status: 403
  end
  rescue_from ActiveRecord::RecordNotFound do
    render "errors/show"
  end

  protected
 
    #derive the model name from the controller. egs UsersController will return User
    def self.permission
      return subject_class = self.name.gsub('Controller','').singularize.split('::').last.constantize.name rescue nil
    end
   
    def current_ability
      @current_ability = Ability.new(current_user)
    end
   
    #load the permissions for the current user so that UI can be manipulated
    def load_permissions
     
      @current_permissions = current_user.role.permissions.collect{|i| [i.subject_class, i.action]}
    end

   
   
end
