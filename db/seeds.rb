# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

occupations = ["Antiquarian", "Artist", "Athlete", "Author", "Clergy Member", "Criminal", "Dilettante", 
    "Doctor of Medicine", "Drifter", "Entertainer", "Farmer", "Journalist", "Lawyer", "Librarian", "Military Officer",
    "Missionary", "Musician", "Parapsychologist", "Pilot", "Police Detective", "Police Officer"]

Occupation.destroy_all
ArtSpecialization.destroy_all
ScienceSpecialization.destroy_all
PilotSpecialization.destroy_all
SurvivalSpecialization.destroy_all
LanguageSpecialization.destroy_all

Character.destroy_all

occupations.each do |occupation|
    Occupation.create(name: occupation)
end

arts = ["acting", "barber", "carpenter", "cobbler", "cook", "dancer", "fine art", "forgery", "morris dancer", "opera singer", "painter", "photographer", "sculptor", "writer", "woodwork", "farming"]

arts.each do |art|
    ArtSpecialization.create(name: art)
end

sciences = ["astronomy", "biology", "botany", "chemistry", "cryptography", "engineering", "forensics", "geology", "mathematics", "meteorology", "pharmacy", "physics", "zoology"]

sciences.each do |science|
    ScienceSpecialization.create(name: science)
end

pilot_specializations = ["aircraft", "boat"]

pilot_specializations.each do |specialization|
    PilotSpecialization.create(name: specialization)
end

survival_specializations = ["desert", "sea", "arctic"]

survival_specializations.each do |survival_specialization|
    SurvivalSpecialization.create(name: survival_specialization)
end

languages = ["Chinese", "Spanish", "Arabic", "French", "Persian", "German", "Russian", "Portuguese", "Italian", "Turkish", "Korean", "Hindi", "Japanese", "Vietnamese", "Latin" ]
languages.each do |language|
    LanguageSpecialization.create(name: language)
end