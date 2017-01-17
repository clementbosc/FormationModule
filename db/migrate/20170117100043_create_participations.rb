class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :seance_laboratoire, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
