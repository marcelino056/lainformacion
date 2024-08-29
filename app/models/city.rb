class City < ApplicationRecord
  belongs_to :state

  RailsAdmin.config do |config|
    config.model City do
      navigation_label 'Settings'
      navigation_icon 'icon-user'
    end
  end
end
