class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.integer :agility
      t.integer :charisma
      t.integer :dexterity
      t.integer :intelligence
      t.integer :strength
      t.integer :wisdom

      t.timestamps
    end
  end
end
