class CreateTalks < ActiveRecord::Migration[5.0]
  def change
    create_table :talks do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end

    add_index(:talks, :category_id)
    add_index(:talks, :user_id)
  end
end
