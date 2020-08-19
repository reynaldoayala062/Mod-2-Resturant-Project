class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|

      t.string :name
      t.string :description
      t.integer :price
      t.integer :menu_id 

      t.timestamps
    end
  end
end
