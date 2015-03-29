class AddForeignKeyToSet < ActiveRecord::Migration
  def change
    add_column :sets, :stat_id, :integer
  end
end
