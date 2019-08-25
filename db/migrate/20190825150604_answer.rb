class Answer < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :a_value
      t.boolean :zombie
      t.references :question
    end
  end
end
