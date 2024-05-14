class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.string :keywords

      t.timestamps
    end
  end
end
