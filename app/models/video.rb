class Video < ApplicationRecord
  has_many :vidclips
  belongs_to :concurso
  default_scope { order('created_at DESC') }
  validates :email, presence: true, uniqueness: true
end