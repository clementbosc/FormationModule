class CreateDevoirs < ActiveRecord::Migration
  def change
    create_table :devoirs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
