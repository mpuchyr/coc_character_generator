class CharactersCampaign < ApplicationRecord
    belongs_to :campaign
    belongs_to :character
end
