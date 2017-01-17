class NoteDevoir < ActiveRecord::Base
  belongs_to :devoir
  belongs_to :user
end
