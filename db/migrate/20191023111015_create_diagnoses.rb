class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.integer :q1, null: false
      t.integer :q2, null: false
      t.integer :q3, null: false
      t.integer :q4, null: false
      t.integer :q5, null: false
      t.integer :q6, null: false
      t.integer :q7, null: false
      t.integer :q8, null: false
      t.integer :q9, null: false
      t.integer :q10, null: false
      t.timestamps
    end
  end
end
