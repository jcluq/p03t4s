class CreatePoemas < ActiveRecord::Migration[6.0]
  def change
    create_table :poemas do |t|
      t.text :titulo
      t.text :contenido

      t.timestamps
    end
  end
end
