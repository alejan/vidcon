class CreateConcurso < ActiveRecord::Migration[5.0]
  def change
    create_table :concursos do |t|
      t.string :name
      t.string :banner
      t.string :vid_url
      t.date :open_date
      t.date :close_date
      t.text :winner_price
    end
  end
end
