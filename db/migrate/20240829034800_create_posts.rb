class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.string :content
      t.references :section, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true
      t.string :slug
      t.string :meta_description
      t.string :meta_keyboard
      t.string :meta_title
      t.datetime :published_at
      t.string :aasm_state
      t.integer :views

      t.timestamps
    end
  end
end
