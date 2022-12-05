class Skill < ApplicationRecord
    belongs_to :character, foreign_key: :character_id
end
