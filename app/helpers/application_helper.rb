module ApplicationHelper
  
  def random_url(basepath)
    
    o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
  string = (0...50).map { o[rand(o.length)] }.join
   string = basepath + string 
  end
  
  def current_user
    
    Administrador.find(session[:current_user_id]).name if session[:current_user_id]
       
   end
   
   def current_user_id
     
     Administrador.find(session[:current_user_id]).id if session[:current_user_id]
   
   end
   
  
end
