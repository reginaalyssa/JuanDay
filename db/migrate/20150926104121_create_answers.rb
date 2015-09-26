class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text
      t.references :question
      t.integer :scene_id

      t.timestamps null: false
    end
  end
end
