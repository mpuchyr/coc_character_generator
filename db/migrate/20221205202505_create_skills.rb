class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.integer :accounting, default: 5
      t.integer :anthropology, default: 1
      t.integer :appraise, default: 5
      t.integer :archaeology, default: 1
      t.integer :charm, default: 15
      t.integer :climb, default: 20
      t.integer :disguise, default: 5
      t.integer :dodge
      t.integer :drive_auto, default: 20
      t.integer :elec_repair, default: 10
      t.integer :fast_talk, default: 5
      t.integer :fighting_brawl, default: 25
      t.integer :firearms_handgun, default: 20
      t.integer :firearms_rifle_shotgun, default: 25
      t.integer :first_aid, default: 30
      t.integer :history, default: 5
      t.integer :intimidate, default: 15
      t.integer :jump, default: 20
      t.integer :law, default: 5
      t.integer :library_use, default: 20
      t.integer :listen, default: 20
      t.integer :locksmith, default: 1
      t.integer :mech_repair, default: 10
      t.integer :medicine, default: 1
      t.integer :natural_world, default: 10
      t.integer :navigate, default: 10
      t.integer :occult, default: 5
      t.integer :persuade, default: 10
      t.integer :psychoanalysis, default: 1
      t.integer :psychology, default: 10
      t.integer :ride, default: 5
      t.integer :sleight_of_hand, default: 10
      t.integer :spot_hidden, default: 25
      t.integer :stealth, default: 20
      t.integer :swim, default: 20
      t.integer :throw, default: 20
      t.integer :track, default: 10
      t.integer :language_own
      t.integer :cthulhu_mythos
      t.integer :credit_rating

      t.timestamps
    end
  end
end
