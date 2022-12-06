class CreateLanguageSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :language_specializations do |t|
      t.string :name

      t.timestamps
    end
  end
end
