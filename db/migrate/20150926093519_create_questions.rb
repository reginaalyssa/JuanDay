class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
<<<<<<< HEAD
<<<<<<< HEAD
      t.integer :scene_id
=======
      t.integer :scene_number
>>>>>>> backend part
=======
      t.integer :scene_id
>>>>>>> add scene1

      t.timestamps null: false
    end
  end
end