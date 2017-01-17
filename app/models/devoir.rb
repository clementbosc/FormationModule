class Devoir < ActiveRecord::Base
  has_many :note_devoirs
  has_many :participants, through: :note_devoirs, class_name: "User"
end
