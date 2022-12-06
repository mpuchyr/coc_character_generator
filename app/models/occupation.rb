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
            return {
                "art_craft" => skill_options.pop,
                ["history", "natural_world"].sample => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "language_other" => skill_options.pop,
                "psychology" => skill_options.pop,
                "spot_hidden" => skill_options.pop,
                "any" => skill_options.pop,
                "any_2" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        when "Athlete"
            return {
                "climb" => skill_options.pop,
                "jump" => skill_options.pop,
                "fighting_brawl" => skill_options.pop,
                "ride" => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "swim" => skill_options.pop,
                "throw" => skill_options.pop,
                "any" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        when "Author"
            return {
                "art_craft" => skill_options.pop,
                "history" => skill_options.pop,
                "library_use" => skill_options.pop,
                ["natural_world", "occult"].sample => skill_options.pop,
                "language_other" => skill_options.pop,
                "language_own" => skill_options.pop,
                "psychology" => skill_options.pop,
                "any" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        end
    end
end
