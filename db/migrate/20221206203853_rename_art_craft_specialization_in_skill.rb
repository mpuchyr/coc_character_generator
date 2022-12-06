class RenameArtCraftSpecializationInSkill < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :art_craft_specialization, :art_craft_specialization_id
  end
end
