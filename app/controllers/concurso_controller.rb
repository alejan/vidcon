class ConcursoController < ApplicationController
  def home

    @concurso = Concurso.find_by(vid_url:"/concurso/"+params['id'])
    @video= @concurso.videos.new

    @vidclips =Vidclip.where(:progress => "Convertido").paginate(:page => params[:page],:per_page => 50).order('created_at DESC')

  end

  def detalle
    @concurso=Concurso.find(params['id'])
    @clips=Vidclip.paginate(:page => params[:page], :per_page => 3)
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
