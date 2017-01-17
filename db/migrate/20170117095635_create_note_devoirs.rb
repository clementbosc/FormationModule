class CreateNoteDevoirs < ActiveRecord::Migration
  def change
    create_table :note_devoirs do |t|
      t.references :devoir, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
