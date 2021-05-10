class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.string :history
      t.integer :level

      t.integer :stat_id, foreign_key: true
      t.integer :race_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      
      t.timestamps
    end
  end
end
