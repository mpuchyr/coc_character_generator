class Occupation < ApplicationRecord
    has_many :characters

    def occupation_skills
        all_social_skills = ["charm", "fast_talk", "intimidate", "persuade"].shuffle
        social_skills_choice_1 = all_social_skills.pop
        social_skills_choice_2 = all_social_skills.pop

        skill_options = [70, 60, 60, 50, 50, 50, 40, 40, 40].shuffle

        case self.name
        when "Antiquarian"
            return {
                "appraise" => skill_options.pop,
                "art_craft" => skill_options.pop,
                # "art_craft_specialization_id" => ArtSpecialization.all.sample.id,
                "history" => skill_options.pop,
                "library_use" => skill_options.pop,
                "language_other" => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "any" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }  
        when "Artist"
            return ["art_craft", ["history", "natural_world"].sample, social_skills_choice_1, "language_other", "psychology", "spot_hidden", "any", "any"]
        when "Athlete"
            return [["climb", "jump", "fighting_brawl"].sample, "ride", social_skills_choice_1, "swim", "throw", "any"]
        when "Author"
            return ["art_craft", "history", "library_use", ["natural_world", "occult"].sample, "language_other", "language_own", "psychology", "any"]
        end
    end
end
