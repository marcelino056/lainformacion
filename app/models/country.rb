class Country < ApplicationRecord
  has_many :states, dependent: :destroy
  accepts_nested_attributes_for :states, allow_destroy: true


  RailsAdmin.config do |config|
    config.model Country do
      navigation_label 'Settings'
      navigation_icon 'icon-user'
    end
  end
end
