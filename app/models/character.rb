class Character < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :occupation

  after_initialize do |user|
    assign_stats
  end

  enum pronoun: { he: "he/him", she: "she/her", they: "they/them"}

  def assign_stats
    if self.str == nil
      stats = [80, 70, 60, 60, 50, 50, 50, 40].shuffle
      self.str = stats.pop
      self.con = stats.pop
      self.dex = stats.pop
      self.app = stats.pop
      self.int = stats.pop
      self.edu = stats.pop
      self.siz = stats.pop
      self.pow = stats.pop
    end

    if self.age == nil
      self.age = rand(18..75)
    end

    if self.pronoun == nil
      self.pronoun = ["he/him", "she/her", "they/them"].sample
    end

    if self.first_name == nil
      if self.he?
        self.first_name = Faker::Name.male_first_name
      elsif self.she?
        self.first_name = Faker::Name.female_first_name
      else
        self.first_name = Faker::Name.first_name
      end
    end
    if self.last_name == nil
      self.last_name = Faker::Name.last_name
    end
    
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
