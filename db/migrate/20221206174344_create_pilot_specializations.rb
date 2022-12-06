class CreatePilotSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :pilot_specializations do |t|
      t.string :name

      t.timestamps
    end
  end
end
