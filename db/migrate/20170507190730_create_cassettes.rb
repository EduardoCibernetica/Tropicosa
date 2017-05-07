class CreateCassettes < ActiveRecord::Migration[5.0]
  def change
    create_table :cassettes do |t|
      t.string :Titulo
      t.string :Autor
      t.string :Ano
      t.string :Disquetera
      t.float :Precio

      t.timestamps
    end
  end
end
