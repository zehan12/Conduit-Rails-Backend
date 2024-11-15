class CreateTags < ActiveRecord::Migration[7.2]
  def change
    create_table :tags do |t|
      t.string :name, null: false

      t.timestamps
    end
    # Add a unique index to the name column to enforce uniqueness at the database level
    add_index :tags, :name, unique: true
  end
end
