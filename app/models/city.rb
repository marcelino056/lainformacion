# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :bigint           not null
#
# Indexes
#
#  index_cities_on_state_id  (state_id)
#
# Foreign Keys
#
#  fk_rails_...  (state_id => states.id)
#
class City < ApplicationRecord
  belongs_to :state

  RailsAdmin.config do |config|
    config.model City do
      navigation_label 'Settings'
      navigation_icon 'icon-user'
    end
  end
end
