class CreateSet < ActiveRecord::Migration
  def change
    create_table :sets do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
