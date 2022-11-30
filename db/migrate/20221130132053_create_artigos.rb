class CreateArtigos < ActiveRecord::Migration[7.0]
  def change
    create_table :test do |t|
      t.string :Titulo
      t.text :Descrição

      t.timestamps
    end
  end
end
