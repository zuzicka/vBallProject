class CreatePosition < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :type
    end
  end
end
