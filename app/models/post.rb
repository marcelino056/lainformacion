class Post < ApplicationRecord
  belongs_to :section
  belongs_to :admin

  RailsAdmin.config do |config|
    config.model Post do
      navigation_label 'Publicaciones'

      # edit do
      #   field :content, :tinymce
      # end
    end
  end
end
