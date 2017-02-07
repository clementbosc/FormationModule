class AddNoteToNoteDevoirs < ActiveRecord::Migration
  def change
    add_column :note_devoirs, :note, :string
  end
end
