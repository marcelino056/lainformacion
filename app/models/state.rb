class State < ApplicationRecord
  belongs_to :country
  has_many :cities, dependent: :destroy
  accepts_nested_attributes_for :cities, allow_destroy: true


  RailsAdmin.config do |config|
    config.model State do
      navigation_label 'Settings'
      navigation_icon 'icon-user'
    end
  end
end
