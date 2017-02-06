class Devoir < ActiveRecord::Base
  has_many :note_devoirs
  has_many :participants, through: :note_devoirs, class_name: "User"
  accepts_nested_attributes_for :note_devoirs
end
