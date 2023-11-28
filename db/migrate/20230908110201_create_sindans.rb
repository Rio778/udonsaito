class CreateSindans < ActiveRecord::Migration[6.1]
  def change
    create_table :sindans do |t|
      t.string :question

      t.timestamps
    end
  end
end
