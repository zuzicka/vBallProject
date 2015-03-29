class CreateJoinTableCoaching < ActiveRecord::Migration
  def change
    create_join_table :leaders, :teams do |t|
      # t.index [:leader_id, :team_id]
      # t.index [:team_id, :leader_id]
    end
  end
end
