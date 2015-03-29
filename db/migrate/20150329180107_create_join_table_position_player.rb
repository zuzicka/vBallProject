class CreateJoinTablePositionPlayer < ActiveRecord::Migration
  def change
    create_join_table :positions, :players do |t|
      # t.index [:position_id, :player_id]
      # t.index [:player_id, :position_id]
    end
  end
end
