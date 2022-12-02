class Character < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :occupation

  before_save :assign_stats

  enum pronoun: { he: "he/him", she: "she/her", they: "they/them"}

  def assign_stats
    stats = [80, 70, 60, 60, 50, 50, 50, 40].shuffle
    self.str = stats.pop
    self.con = stats.pop
    self.dex = stats.pop
    self.app = stats.pop
    self.int = stats.pop
    self.edu = stats.pop
    self.siz = stats.pop
    self.pow = stats.pop

    self.age = rand(18..75)
  end

  #   if self.age < 20
  #   elsif self.age >= 20 && self.age <= 29
  #     self.str = self.str - 5
  #     self.siz = self.siz - 5
  #     self.edu = self.edu - 5
  #   elsif self.age >= 30 && self.age <= 39
  #     if self.stat_check(edu)
        
  #     end
  #   elsif self.age >= 40 && self.age <= 49
  #   elsif self.age >= 50 && self.age <= 59
  #   elsif self.age >= 60 && self.age <= 69
  #   else
  #   end

  # end

  # def stat_check(stat)
  #   roll = rand(1..100)
  #   return roll > stat
  # end
end
