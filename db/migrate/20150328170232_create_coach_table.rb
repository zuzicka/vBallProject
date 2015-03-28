class CreateCoachTable < ActiveRecord::Migration
  def change
    create_table :coach_tables do |t|
      t.string :name
      t.string :path
      t.text :description

      t.timestamps null: false
    end
  end
end
