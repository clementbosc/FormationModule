class Group < ActiveRecord::Base
  has_many :members
  has_many :tp_students, through: :members, source: "user"
  has_one :lab_teacher
  has_one :enseignant_tp, through: :lab_teacher, source: "user"
  has_one :theory_teacher
  has_one :enseignant_td, through: :theory_teacher, source: "user"


  def td
    name.split('.').first
  end

  def td_students
    User.select do |u|
      u.groupe_td == td
    end
  end

end
