class AddCharacterIdToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :character_id, :integer
  end
end
