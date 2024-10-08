RailsAdmin.config do |config|
  config.asset_source = :importmap

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  config.audit_with :paper_trail, "Admin", "PaperTrail::Version" # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    history_index
    history_show
  end

  config.model "ActiveStorage::Blob" do
    visible false
  end

  config.model "ActiveStorage::Attachment" do
    visible false
  end

  config.model "ActiveStorage::VariantRecord" do
    visible false
  end

  config.model "ActionText::RichText" do
    visible false
  end

  config.model "ActionText::EncryptedRichText" do
    visible false
  end
end
