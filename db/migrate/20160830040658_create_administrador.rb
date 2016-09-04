class CreateAdministrador < ActiveRecord::Migration[5.0]
  def change
    create_table :administradors do |t|
      t.string :name
      t.string :last
      t.string :email
      t.string :password_digest
    end
  end
end
