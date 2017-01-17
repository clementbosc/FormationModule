class CreateSeanceLaboratoires < ActiveRecord::Migration
  def change
    create_table :seance_laboratoires do |t|
      t.string :name
      t.integer :number

      t.timestamps null: false
    end
  end
end
