class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.integer :phone_number
      t.string :email

      t.timestamps null: false
    end
  end
end
