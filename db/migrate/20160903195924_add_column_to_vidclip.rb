class AddColumnToVidclip < ActiveRecord::Migration[5.0]
  def change
    add_column :vidclips, :preview_url, :string
    add_column :vidclips, :converted_url, :string
  end
end
