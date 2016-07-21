class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.user :belongs_to
      t.pokemon :belongs_to

      t.timestamps
    end
  end
end
