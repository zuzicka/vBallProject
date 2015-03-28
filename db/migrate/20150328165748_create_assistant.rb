class CreateAssistant < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string :name
      t.string :email
    end
  end
end
