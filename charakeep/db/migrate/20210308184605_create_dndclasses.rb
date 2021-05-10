class CreateDndclasses < ActiveRecord::Migration[6.1]
  def change
    create_table :dndclasses do |t|
      t.string :name

      t.timestamps
    end
  end
end
