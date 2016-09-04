class Vidclip < ApplicationRecord
  belongs_to :video
  mount_uploader :vid, VidUploader
  default_scope { order('created_at DESC') }
  validates :vid, presence: true
  mount_uploader :url, VidUploader

end