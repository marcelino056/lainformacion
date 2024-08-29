class CreateSections < ActiveRecord::Migration[7.2]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :position
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
