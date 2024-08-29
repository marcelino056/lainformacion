# == Schema Information
#
# Table name: states
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :bigint           not null
#
# Indexes
#
#  index_states_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
class State < ApplicationRecord
  belongs_to :country
  has_many :cities, dependent: :destroy
  accepts_nested_attributes_for :cities, allow_destroy: true


  RailsAdmin.config do |config|
    config.model State do
      navigation_label I18n.t("admin.models.settings")
      navigation_icon "icon-user"
    end
  end
end
