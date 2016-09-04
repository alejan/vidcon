class AdministradorController < ApplicationController
 
  helper_method  :current_user 
  
  def index
    
    @user = Administrador.new
    @concursos = Concurso.all
    
  end
  
 def log_out
     session[:current_user_id]=nil
     redirect_to root_path
   end
 
 
  def login
    
admin= Administrador.find_by(email:params[:email])
if admin.authenticate(params[:password])
  session[:current_user_id]=admin.id 
     redirect_to admin_path
   else
     redirect_to root_path
  end
end

  def create
    
    @user = Administrador.new(admin_params)
   redirect_to root_url if @user.save
  end
  
 def admin_panel
   @concursos = Concurso.all
   @concurso = Concurso.new
   
 end
  
  private
 
   
   def admin_params
     params.permit(:name,:last,:email,:password)
   end
end
