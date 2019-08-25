class Question < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :q_value
    end
  end
end