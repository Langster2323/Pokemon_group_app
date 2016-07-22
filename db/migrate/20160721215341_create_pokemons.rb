class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :types
      t.string :description
      t.integer :height
      t.integer :weight
      
    end
  end
end
