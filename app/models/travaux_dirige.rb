class TravauxDirige < ActiveRecord::Base
  has_many :interrogations
  has_many :attendants, through: :interrogations, class_name: "User"
end
