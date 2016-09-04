class RemoveBannerFromConcurso < ActiveRecord::Migration[5.0]
  def change
    remove_column :concursos, :banner, :string
  end
end
