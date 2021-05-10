class ChangeClassToInteger < ActiveRecord::Migration[6.1]
  def change
    change_table :characters do |t|
      t.remove :class

      t.integer :dndclass_id
    end
  end
end
