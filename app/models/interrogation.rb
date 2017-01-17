class Interrogation < ActiveRecord::Base
  belongs_to :travaux_dirige
  belongs_to :user

  
end
