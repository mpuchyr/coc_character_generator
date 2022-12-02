class Character < ApplicationRecord
  belongs_to :owner, class_name: "User"

  enum pronoun: { he: "he/him", she: "she/her", they: "they/them"}
end
