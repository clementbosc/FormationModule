class User < ActiveRecord::Base
  has_one :member
  has_one :group, through: :member
  has_one :theory_teacher
  has_many :lab_teachers
  has_many :enseignement_tps, through: :lab_teachers, class_name: "Group"
  has_many :note_devoirs
  has_many :devoirs, through: :note_devoirs
  has_many :interrogations
  has_many :participations
  has_many :participation_tps, :through => :participations, class_name: "SeanceLaboratoire"
  has_many :participation_tds, :through => :interrogations, class_name: "TravauxDirige"



  def groupe_td
    nil if member.nil?
    member.group.td
  end
  
  def enseignement_td
    nil if theory_teacher.nil?
    theory_teacher.group.td
  end


  def eleves_td
    nil unless theory_teacher?
    theory_teacher.group.td_students
  end
end
