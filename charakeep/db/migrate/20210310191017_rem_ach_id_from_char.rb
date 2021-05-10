class RemAchIdFromChar < ActiveRecord::Migration[6.1]
  def change
    change_table :characters do |t|
      t.remove :achievement_id

    end
  end
end
