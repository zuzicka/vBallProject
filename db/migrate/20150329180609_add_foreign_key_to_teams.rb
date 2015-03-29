class AddForeignKeyToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :club_id, :integer
  end
end
