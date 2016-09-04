Rails.application.routes.draw do
 

  

  root 'administrador#index'
 
 controller :administrador do
   get 'index/user' => :index
    post 'index/user' => :login
   post 'index/create' => :create
   get 'admin' => :admin_panel
   get 'admin/logout' => :log_out
 end
 
  controller :concurso do
   get 'concurso' => :show
   get 'concurso/detalle' => :detalle
   post 'concurso' => :create
   delete 'concurso' => :destroy
   match 'concurso' => :edit , via: [:put,:patch]
   get 'concurso/:id' => :home
 
  end
    
  controller :video do
    
    get 'video' => :new
    post 'video' => :create
     get  'video/back' => :create
     get 'video/show/preview/:id' => :show_preview
    get 'video/show/converted/:id' => :show_converted
  end
  
  

   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
