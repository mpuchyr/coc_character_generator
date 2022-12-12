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
                "art_craft_specialization_id" => ArtSpecialization.all.sample.id,
                "history" => skill_options.pop,
                "library_use" => skill_options.pop,
                "language_other" => skill_options.pop,
                "language_specialization_id" => LanguageSpecialization.all.sample.id,
                social_skills_choice_1 => skill_options.pop,
                "any" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }  
        when "Artist"
            return {
                "art_craft" => skill_options.pop,
                "art_craft_specialization_id" => ArtSpecialization.all.sample.id,
                ["history", "natural_world"].sample => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "language_other" => skill_options.pop,
                "language_specialization_id" => LanguageSpecialization.all.sample.id,
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
                "art_craft_specialization_id" => ArtSpecialization.where(name: "writer").first.id,
                "history" => skill_options.pop,
                "library_use" => skill_options.pop,
                ["natural_world", "occult"].sample => skill_options.pop,
                "language_other" => skill_options.pop,
                "language_specialization_id" => LanguageSpecialization.all.sample.id,
                "language_own" => skill_options.pop,
                "psychology" => skill_options.pop,
                "any" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        when "Clergy Member"
            return {
                "accounting" => skill_options.pop,
                "history" => skill_options.pop,
                "library_use" => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "psychology" => skill_options.pop,
                "any" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        when "Criminal"
            return {
                social_skills_choice_1 => skill_options.pop,
                "psychology" => skill_options.pop,
                "spot_hidden" => skill_options.pop,
                "any" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        when "Dilettante"
            return {
                "art_craft" => skill_options.pop,
                "art_craft_specialization_id" => ArtSpecialization.all.sample.id,
                ["firearms_handgun", "firearms_rifle_shotgun"].sample => skill_options.pop,
                "language_other" => skill_options.pop,
                "language_specialization_id" => LanguageSpecialization.all.sample.id,
                "ride" => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "any" => skill_options.pop,
                "any_2" => skill_options.pop,
                "any_3" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        # review schema to add another science specialization
        when "Doctor of Medicine"
            return {
                "first_aid" => skill_options.pop,
                "language_other" => skill_options.pop,
                "language_specialization_id" => LanguageSpecialization.where(name: "Latin").first.id,
                "medicine" => skill_options.pop,
                "psychology" => skill_options.pop,
                "any" => skill_options.pop,
                "any" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        when "Drifter"
            return {
                "climb" => skill_options.pop,
                "jump" => skill_options.pop,
                "listen" => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "stealth" => skill_options.pop,
                "any" => skill_options.pop,
                "any_2" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        when "Entertainer"
            return {
                "art_craft" => skill_options.pop,
                "art_craft_specialization_id" => ArtSpecialization.where(name: "acting").first.id,
                "disguise" => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                social_skills_choice_2 => skill_options.pop,
                "listen" => skill_options.pop,
                "psychology" => skill_options.pop,
                "any" => skill_options.pop,
                "any_2" => skill_options.pop
            }
        when "Farmer"
            return {
                "art_craft" => skill_options.pop,
                "art_craft_specialization_id" => ArtSpecialization.where(name: "farming").first.id,
                "drive_auto" => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "mech_repair" => skill_options.pop,
                "natural_world" => skill_options.pop,
                # "op_hv_machine" => skill_options.pop,
                "track" => skill_options.pop,
                "any" => skill_options.pop
            }
        when "Journalist"
            return {
                "art_craft" => skill_options.pop,
                "history" => skill_options.pop,
                "library_use" => skill_options.pop,
                "language_own" => skill_options.pop,
                social_skills_choice_1 => skill_options.pop,
                "psychology" => skill_options.pop,
                "any" => skill_options.pop,
                "any_2" => skill_options.pop,
                "credit_rating" => skill_options.pop
            }
        
        end
    end
end
