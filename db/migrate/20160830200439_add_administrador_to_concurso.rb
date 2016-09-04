class AddAdministradorToConcurso < ActiveRecord::Migration[5.0]
  def change
    add_reference :concursos, :admin, foreign_key: true
  end
end
