class CreatePlayer < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
    end
  end
end
