class AddVidToVidclip < ActiveRecord::Migration[5.0]
  def change
    add_column :vidclips, :vid, :string
  end
end
