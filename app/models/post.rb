# == Schema Information
#
# Table name: posts
#
#  id                   :bigint           not null, primary key
#  aasm_state           :string
#  content              :string
#  front_page           :boolean
#  highlight_on_section :boolean
#  meta_description     :string
#  meta_keyboard        :string
#  meta_title           :string
#  published_at         :datetime
#  slug                 :string
#  subtitle             :string
#  title                :string
#  views                :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  admin_id             :bigint           not null
#  section_id           :bigint           not null
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
  has_rich_text :content
  has_one_attached :featured_image

  attr_accessor :remove_featured_image
  after_save { featured_image.purge if remove_featured_image == "1" }


  RailsAdmin.config do |config|
    config.model Post do
      label "Textos Periodísticos"
      navigation_label "Publicaciones"

      edit do
        group :title do
          label I18n.t("admin.misc.title")
          field :title
          field :subtitle
        end
        group :content do
          label I18n.t("admin.misc.content")
          field :content, :action_text
          field :featured_image, :active_storage do
            delete_method :remove_featured_image
            pretty_value do
              if value
                path = Rails.application.routes.url_helpers.rails_blob_path(value, only_path: true)
                bindings[:view].content_tag(:a, value.filename, href: path)
              end
            end
          end
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
