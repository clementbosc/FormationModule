class SeanceLaboratoire < ActiveRecord::Base
  has_many :participations
  has_many :attendants, through: :participations, class_name: "User"
end
