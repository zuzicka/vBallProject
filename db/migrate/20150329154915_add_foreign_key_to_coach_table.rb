class AddForeignKeyToCoachTable < ActiveRecord::Migration
  def change
    add_column :coach_tables, :team_id, :integer
  end
end
