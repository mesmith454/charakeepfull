class AddCharIdToStats < ActiveRecord::Migration[6.1]
  def change
    add_column :stats, :character_id, :integer
  end
end
