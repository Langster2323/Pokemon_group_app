class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :height
      t.integer :weight
      t.string :abilities

      t.timestamps
    end
  end
end
