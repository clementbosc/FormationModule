class AddNoteToInterrogations < ActiveRecord::Migration
  def change
    add_column :interrogations, :note, :float
  end
end
