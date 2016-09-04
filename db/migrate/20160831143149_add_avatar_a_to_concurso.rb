class AddAvatarAToConcurso < ActiveRecord::Migration[5.0]
  def change
    add_column :concursos, :avatar, :string
  end
end
