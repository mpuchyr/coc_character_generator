class Occupation < ApplicationRecord
    has_many :characters

    def occupation_skills
        all_social_skills = ["charm", "fast_talk", "intimidate", "persuade"].shuffle
        social_skills_choice_1 = all_social_skills.pop
        social_skills_choice_2 = all_social_skills.pop

        case self.name
        when "Antiquarian"
            return ["appraise", "art/craft", "history", "library_use", "language_other", "any", social_skills_choice_1]
        when "Artist"
            return ["art/craft", ["history", "natural_world"].sample, social_skills_choice_1, "language_other", "psychology", "spot_hidden", "any", "any"]
        when "Athlete"
            return [["climb", "jump", "fighting_brawl"].sample, "ride", social_skills_choice_1, "swim", "throw", "any"]
        when "Author"
            return ["art/craft", "history", "library_use", ["natural_world", "occult"].sample, "language_other", "language_own", "psychology", "any"]
        end
    end
end
