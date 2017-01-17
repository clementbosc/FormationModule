class CreateTravauxDiriges < ActiveRecord::Migration
  def change
    create_table :travaux_diriges do |t|
      t.string :name
      t.integer :number

      t.timestamps null: false
    end
  end
end
