class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :cour, foreign_key: true
      t.string :titre
      t.text :body

      t.timestamps
    end
  end
end
