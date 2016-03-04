class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.integer :sq_ft
      t.integer :bedroom
      t.float :bath
      t.integer :year
      t.integer :price
      t.boolean :garage
      t.boolean :pool

      t.timestamps null: false
    end
  end
end
