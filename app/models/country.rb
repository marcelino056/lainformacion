# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  deleted_at :datetime
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Country < ApplicationRecord
  has_many :states, dependent: :destroy
  accepts_nested_attributes_for :states, allow_destroy: true


  RailsAdmin.config do |config|
    config.model Country do
      navigation_label I18n.t("admin.models.settings")
      navigation_icon "icon-user"
    end
  end
end
