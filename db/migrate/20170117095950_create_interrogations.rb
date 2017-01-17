class CreateInterrogations < ActiveRecord::Migration
  def change
    create_table :interrogations do |t|
      t.references :travaux_dirige, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
