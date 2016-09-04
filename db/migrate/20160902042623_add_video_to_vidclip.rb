class AddVideoToVidclip < ActiveRecord::Migration[5.0]
  def change
    add_reference :vidclips, :video, foreign_key: true
  end
end
