class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :scene_id
      t.timestamps null: false
    end
  end
end
