class AddColumnsToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :art_craft, :integer
    add_column :skills, :art_craft_specialization, :integer
    add_column :skills, :language_other, :integer
    add_column :skills, :language_specialization_id, :integer
    add_column :skills, :science, :integer
    add_column :skills, :science_specialization_id, :integer
    add_column :skills, :pilot_specialization_id, :integer
    add_column :skills, :survival, :integer
    add_column :skills, :survival_specialization_id, :integer
  end
end
