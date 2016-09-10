class ConcursoController < ApplicationController
  def home
   session[:vid_id]=params['id'] if params['id']
    @concurso = Concurso.find_by(vid_url:"/concurso/"+session[:vid_id])
    
    @video= @concurso.videos.new
    ids=@concurso.videos.select(:id)
    
    @vidclips =Vidclip.where(:progress => "Convertido",:video_id => ids ).paginate(:page => params[:page],:per_page => 50)

  end

  def detalle
    @concurso=Concurso.find(params['id'])
    ids=@concurso.videos.select(:id)
     @clips =Vidclip.where(:video_id => ids ).paginate(:page => params[:page],:per_page => 10)

    
  end

  def show
    @concurso=Concurso.find(params['id'])
  end

  def create
    admin = Administrador.find(current_user_id)

    concurso= admin.concursos.new
    concurso.name=params['name']
    concurso.open_date=params['open_date']
    concurso.close_date=params['close_date']
    concurso.winner_price=params['winner_price']
    concurso.avatar = params['avatar']
    concurso.vid_url = random_url('/concurso/')

    redirect_to admin_path if concurso.save

  end

  def destroy
    con=Concurso.find(params['id'])
    redirect_to admin_path if con.delete
  end

  def edit

    @concurso=Concurso.find(params['id'])
    redirect_to admin_path if @concurso.update(params_concurso)
  end
  private

  def params_concurso
    params.permit(:name,:avatar,:open_date,:close_date,:winner_price)
  end
end
