class AddConcursoToVideo < ActiveRecord::Migration[5.0]
  def change
    add_reference :videos, :concurso, foreign_key: true
  end
end
