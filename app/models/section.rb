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
