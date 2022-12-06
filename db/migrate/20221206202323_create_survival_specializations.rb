class CreateSurvivalSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :survival_specializations do |t|
      t.string :name

      t.timestamps
    end
  end
end
