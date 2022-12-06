class Skill < ApplicationRecord
    belongs_to :character, foreign_key: :character_id

    # has_one :art_craft_specialization, foreign_key: :art_craft_specialization_id, optional: true
    # has_one :language_other_specialization, foreign_key: :language_specialization_id, optional: true
    # has_one :pilot_specialization, foreign_key: :pilot_specialization_id, optional: true
    # has_one :science_specialization, foreign_key: :science_specialization_id, optional: true
    # has_one :survival_specialization, foreign_key: :survival_specialization_id, option: true
end
