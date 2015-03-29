class AddForeignKeyToCoachTable < ActiveRecord::Migration
  def change
    add_column :coaching_tables, :team_id, :integer
  end
end
