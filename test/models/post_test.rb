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
require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
