class CreateGatos < ActiveRecord::Migration
  def change
    create_table :gatos do |t|
      t.string :nombre
      t.text :comentario

      t.timestamps
    end
  end
end
