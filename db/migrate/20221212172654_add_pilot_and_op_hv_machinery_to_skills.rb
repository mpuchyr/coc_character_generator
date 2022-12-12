class AddPilotAndOpHvMachineryToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :pilot, :integer, default: 1
    add_column :skills, :op_hv_machine, :integer, default: 1
  end
end
