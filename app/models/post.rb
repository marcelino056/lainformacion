# == Schema Information
#
# Table name: posts
#
#  id               :bigint           not null, primary key
#  aasm_state       :string
#  content          :string
#  meta_description :string
#  meta_keyboard    :string
#  meta_title       :string
#  published_at     :datetime
#  slug             :string
#  subtitle         :string
#  title            :string
#  views            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  admin_id         :bigint           not null
#  section_id       :bigint           not null
#
# Indexes
#
#  index_posts_on_admin_id    (admin_id)
#  index_posts_on_section_id  (section_id)
#
# Foreign Keys
#
#  fk_rails_...  (admin_id => admins.id)
#  fk_rails_...  (section_id => sections.id)
#
class Post < ApplicationRecord
  belongs_to :section
  belongs_to :admin

  RailsAdmin.config do |config|
    config.model Post do
      navigation_label "Publicaciones"

      edit do
        group :title do
          label "Title information"
          field :title
          field :subtitle
        end
        group :content do
          field :content, :tinymce
        end

        group :meta do
          field :meta_title
          field :meta_description
          field :meta_keyboard
        end
      end
    end
  end
end
