class AddForeignKeyToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :player_id, :integer
  end
end
