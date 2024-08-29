class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  RailsAdmin.config do |config|
    config.model Admin do
      navigation_label 'Settings'
      navigation_icon 'icon-user'
    end
  end
end
