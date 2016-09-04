class Administrador < ApplicationRecord
  has_many :concursos
  validates :email , presence: true, uniqueness: true
  has_secure_password
  def self.get_processing_videos

    admins = Administrador.all

    admins.each do |t|

      t.concursos.each do |u|

        u.videos.each do |v|

          v.vidclips.each do |w|
            if w.progress == "Procesando"
              movie = FFMPEG::Movie.new(w.vid.path)
              movie.transcode("/Users/alejandroquintero/ruby/cloud/vidcon/public/uploads/vidclip/converted/"+w.vid.file.filename+".mp4") do |progress|
                if progress == 1

                  o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
                  string = (0...50).map { o[rand(o.length)] }.join
                  string = '/video/show/converted/' + string
                  w.converted_url=string
                  w.progress = "Convertido"
                  w.save
                  vc= ConversionMailer.new
                  vc.video_converted_email(v,"puede verlo aca <a href=#{w.converted_url} >#{w.converted_url}</a>").deliver
                end

              end

            end
          end

        end

      end

    end
  end

end

