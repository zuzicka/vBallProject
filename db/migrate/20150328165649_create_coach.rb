class CreateCoach < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :email
    end
  end
end
