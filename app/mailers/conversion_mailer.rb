class ConversionMailer < ApplicationMailer 
 default from: 'vidconcurso@gmail.com'
def video_converted_email(user, email_body)
    mail(to: user.email,
         body: email_body,
         content_type: "text/html",
         subject: "Video se genero!")
  end
  
end