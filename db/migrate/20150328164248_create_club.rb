class CreateClub < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :password_coach
      t.string :password_players

      t.timestamps null: false
    end

  end

end
