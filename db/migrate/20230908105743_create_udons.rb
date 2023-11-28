class CreateUdons < ActiveRecord::Migration[6.1]
  def change
    create_table :udons do |t|
      t.string :name
      t.string :place
      t.date :posted_date
      t.integer :lat
      t.integer :level
      t.string  :image
      t.integer :lng

      t.timestamps
    end
  end
end
