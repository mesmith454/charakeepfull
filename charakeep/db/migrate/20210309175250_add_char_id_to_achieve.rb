class AddCharIdToAchieve < ActiveRecord::Migration[6.1]
  def change
    add_column :achievements, :character_id, :integer
  end
end
