class Campaign < ApplicationRecord
    belongs_to :user
    has_many :characters_campaigns
    has_many :characters, through: :characters_campaigns
end
