class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
   rename_column :concursos, :admin_id, :administrador_id
  end
end
