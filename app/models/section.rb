# == Schema Information
#
# Table name: sections
#
#  id         :bigint           not null, primary key
#  deleted_at :datetime
#  name       :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Section < ApplicationRecord
  has_ancestry
  has_many :posts

  RailsAdmin.config do |config|
    config.model Section do
      navigation_label 'Settings'
      navigation_icon 'icon-user'
    end
  end
end
