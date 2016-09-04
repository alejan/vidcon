class Concurso < ApplicationRecord
  belongs_to :administrador
  has_many :videos
  mount_uploader :avatar,AvatarUploader

end