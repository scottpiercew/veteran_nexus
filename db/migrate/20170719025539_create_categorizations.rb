class CreateCategorizations < ActiveRecord::Migration[5.1]
  def change
    create_table :categorizations do |t|
      t.integer :category_id
      t.integer :organization_id

      t.timestamps
    end
    add_index :categorizations, [:category_id, :organization_id]
  end
end
