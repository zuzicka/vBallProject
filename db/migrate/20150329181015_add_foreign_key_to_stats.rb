class AddForeignKeyToStats < ActiveRecord::Migration
  def change
    add_column :stats, :team_id, :integer
  end
end
