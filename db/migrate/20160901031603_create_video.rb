class CreateVideo < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :email
      t.string :name
      t.string :last
      t.string :state
      t.string :url_original
      t.string :url_converted
      t.timestamps
    end
  end
end
