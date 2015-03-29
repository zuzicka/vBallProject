class CreateJoinTablePlaying < ActiveRecord::Migration
  def change
    create_join_table :matches, :players do |t|
      # t.index [:match_id, :player_id]
      # t.index [:player_id, :match_id]

      t.integer :servingEso
      t.integer :servingOK
      t.integer :servingError

      t.integer :hittingKill
      t.integer :hittingOK
      t.integer :hittingError

      t.integer :passingKill
      t.integer :passingOK
      t.integer :passingError

      t.integer :blockingKill
      t.integer :blockingOK
      t.integer :blockingError

      t.integer :settingExcellent
      t.integer :settingOK
      t.integer :settingError

      t.integer :defenseExcellent
      t.integer :defenseOK
      t.integer :defenseError
    end
  end
end
