class VideoController < ApplicationController
  def list
    @videos=Video.all

  end

  def new
    @con = Concurso.find(params['id']) if params['id']
    @video = @con.videos.new
   
  end

  def show_preview

    @vidclip=Vidclip.find_by(preview_url:"/video/show/preview/"+params[:id])
    video = Video.find(@vidclip.video_id)
    @con = Concurso.find(video.concurso_id)

  end

  def show_converted
    @vidclip=Vidclip.find_by(converted_url:"/video/show/converted/"+params[:id])
   video = Video.find(@vidclip.video_id)
    @con = Concurso.find(video.concurso_id)
  end

  def create

    if params['concurso_id']
      @con ||= Concurso.find(params['concurso_id'])

      vid = @con.videos.new(params_video)
      @videos = vid
      @clips =vid.vidclips.all
      vid.save
    else
      @videos= Video.find(params['id'])
      @clips = @videos.vidclips.all
      clips=@videos.vidclips.new
      clips.message=params['message']
      clips.vid=params['vid']
      clips.progress="Procesando"
      clips.preview_url= random_url('/video/show/preview/')
      clips.save
     
    end

  end

  private

  def params_video
    params.permit(:name,:last,:email)
  end

  def params_vidclip
    params.permit(:message, :vid)
  end
end
