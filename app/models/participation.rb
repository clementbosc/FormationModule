class Participation < ActiveRecord::Base
  belongs_to :seance_laboratoire
  belongs_to :user
end
