class AddUrlToVidclip < ActiveRecord::Migration[5.0]
  def change
    add_column :vidclips, :url, :string
  end
end
