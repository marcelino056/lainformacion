class PostConfig < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :front_page, :boolean
    add_column :posts, :highlight_on_section, :boolean
  end
end
