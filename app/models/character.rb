class Character < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :occupation

  before_save do |character|
    assign_stats
  end

  # after_initialize do |character|
  #   assign_stats
  # end

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

      # determine power and sanity, as sanity equals power
      self.san = stats[0]
      self.pow = stats.pop

      self.hp = (self.con + self.siz) / 10

    end

    if self.dex < self.siz && self.str < self.siz
      self.mov = 7
    elsif self.str >= self.siz || self.dex >= self.siz
      self.mov = 6
    else
      self.mov = 9
    end

    self.luck = (2 * rand(6) + 6) * 5

    self.mp = self.pow / 5



    # if self.pronoun == nil
    #   self.pronoun = ["he/him", "she/her", "they/them"].sample
    # end


    if self.occupation_id == nil
      self.occupation_id = rand(Occupation.count)
    end

    determine_name
    determine_db_and_build
    determine_age_and_modifiers
    
  end

  def determine_age_and_modifiers
    if self.age == nil
      self.age = rand(18..75)
    end
    self.apply_age_modifiers
  end

  def apply_age_modifiers
    if self.age != nil
      if self.age < 20
        self.str = self.str - 5
        self.siz = self.siz - 5
        self.edu = self.edu - 5
      elsif self.age >= 20 && self.age <= 39
        determine_edu_modifiers(1)
      elsif self.age >= 40 && self.age <= 49
        self.mov = self.mov - 1
        determine_edu_modifiers(2)
      elsif self.age >= 50 && self.age <= 59
        self.mov = self.mov - 2
        determine_edu_modifiers(3)
      elsif self.age >= 60 && self.age <= 69
        self.mov = self.mov - 3
        determine_edu_modifiers(4)
      else
        self.mov = self.mov - 4
        determine_edu_modifiers(4)
      end
    end
  end

  def determine_edu_modifiers(num_of_times)
    total = 0
    
    num_of_times.times do
      if !stat_check(self.edu)
        total += rand(1..10)
        puts total
      end
    end

    if self.edu + total <= 99
      self.edu = self.edu + total
    else
      self.edu = 99
    end
  end


  def determine_db_and_build
    total = self.siz + self.str
    if total <= 64
      self.damage_bonus = "-2"
      self.build = -2
    elsif total >= 65 && total <= 84
      self.damage_bonus = "-1"
      self.build = -1
    elsif total >= 85 && total <= 124
      self.damage_bonus = "None"
      self.build = 0
    elsif total >= 125 && total <= 164
      self.damage_bonus = "+1D4"
      self.build = 1
    else
      self.damage_bonus = "+1D6"
      self.build = 2
    end
  end

  def determine_name
    if self.first_name == ""
      if self.he?
        self.first_name = Faker::Name.male_first_name
      elsif self.she?
        self.first_name = Faker::Name.female_first_name
      else
        self.first_name = Faker::Name.first_name
      end
    end
    
    if self.last_name == ""
      self.last_name = Faker::Name.last_name
    end
  end


  def stat_check(stat)
    roll = rand(1..100)
    return roll < stat
  end
end
